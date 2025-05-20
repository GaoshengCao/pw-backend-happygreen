from django.test import TestCase
from django.urls import reverse
from rest_framework.test import APITestCase, APIClient
from rest_framework import status
from .models import (
    User, Group, Membership, Post, Comment,
    ScannedObject, Quiz, Badge, EcoProduct, WasteClassification
)
import json
import tempfile
from PIL import Image
from django.core.files.uploadedfile import SimpleUploadedFile


# User tests
class UserModelTest(TestCase):
    def setUp(self):
        self.test_user = User.objects.create_user(
            username='testuser',
            password='testpassword123'
        )

    def test_user_creation(self):
        self.assertTrue(isinstance(self.test_user, User))
        self.assertEqual(self.test_user.username, 'testuser')
        self.assertEqual(self.test_user.points, 0)
        self.assertEqual(self.test_user.level, 1)


# Group tests
class GroupModelTest(TestCase):
    def setUp(self):
        self.test_user = User.objects.create_user(username='testuser', password='testpassword123')
        self.test_group = Group.objects.create(name='Eco Warriors', created_by=self.test_user)

    def test_group_creation(self):
        self.assertTrue(isinstance(self.test_group, Group))
        self.assertEqual(self.test_group.name, 'Eco Warriors')
        self.assertEqual(self.test_group.created_by, self.test_user)


# API Tests
class UserAPITest(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword123')
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.url = reverse('user-list-create')

    def test_create_user(self):
        data = {
            'username': 'newuser',
            'password': 'newpassword123'
        }
        response = self.client.post(self.url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(User.objects.count(), 2)

    def test_get_users(self):
        response = self.client.get(self.url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)


class GroupAPITest(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword123')
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.url = reverse('group-list-create')

    def test_create_group(self):
        data = {
            'name': 'Green Team',
            'created_by': self.user.id
        }
        response = self.client.post(self.url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(Group.objects.count(), 1)

    def test_get_groups(self):
        Group.objects.create(name='Green Team', created_by=self.user)
        response = self.client.get(self.url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)


class PostAPITest(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword123')
        self.group = Group.objects.create(name='Green Team', created_by=self.user)
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.url = reverse('post-list-create')

    def test_create_post(self):
        data = {
            'group': self.group.id,
            'author': self.user.id,
            'text': 'This is a test post about sustainability',
            'location_lat': 45.4642,
            'location_lng': 9.1900
        }
        response = self.client.post(self.url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(Post.objects.count(), 1)


class EcoProductAPITest(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword123')
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.url = reverse('ecoproduct-list-create')
        self.eco_product = EcoProduct.objects.create(
            barcode='123456789',
            name='Eco Bottle',
            brand='GreenBrand',
            eco_score='A',
            sustainable_alt=json.dumps(['Refillable bottles', 'Glass bottles'])
        )

    def test_get_eco_product(self):
        response = self.client.get(self.url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)
        self.assertEqual(response.data[0]['name'], 'Eco Bottle')


class ScannedObjectAPITest(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword123')
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.url = reverse('scannedobject-list-create')

    def test_create_scanned_object(self):
        data = {
            'user': self.user.id,
            'object_type': 'plastic_bottle',
            'description': 'A plastic water bottle that should be recycled',
            'location_lat': 45.4642,
            'location_lng': 9.1900
        }
        response = self.client.post(self.url, data, format='json')
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(ScannedObject.objects.count(), 1)


class WasteClassificationAPITest(APITestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpassword123')
        self.client = APIClient()
        self.client.force_authenticate(user=self.user)
        self.url = reverse('wasteclassification-list-create')

        # Create a test image
        image = Image.new('RGB', (100, 100))
        tmp_file = tempfile.NamedTemporaryFile(suffix='.jpg')
        image.save(tmp_file)
        tmp_file.seek(0)

        self.waste_classification = WasteClassification.objects.create(
            material='Plastic',
            bin_color='Yellow',
            instructions='Clean and empty before recycling',
            image=SimpleUploadedFile(name='test_image.jpg',
                                     content=open(tmp_file.name, 'rb').read(),
                                     content_type='image/jpeg')
        )

    def test_get_waste_classification(self):
        response = self.client.get(self.url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)
        self.assertEqual(response.data[0]['material'], 'Plastic')
        self.assertEqual(response.data[0]['bin_color'], 'Yellow')