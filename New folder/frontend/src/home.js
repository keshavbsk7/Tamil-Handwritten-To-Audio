import React, { useState } from 'react';
import './css/home.css';

const HomePage = () => {
  const [selectedImage, setSelectedImage] = useState(null);
  const [previewImage, setPreviewImage] = useState(null);
  const [response, setResponse] = useState(null);

  const handleImageChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      setSelectedImage(file);

      // Create a preview of the selected image
      const reader = new FileReader();
      reader.onloadend = () => {
        setPreviewImage(reader.result);
      };
      reader.readAsDataURL(file);
    }
  };

  const handleUpload = async () => {
    if (!selectedImage) {
      alert('Please select an image first!');
      return;
    }

    const formData = new FormData();
    formData.append('image', selectedImage);

    try {
      const res = await fetch('http://localhost:5000/upload', {
        method: 'POST',
        body: formData,
      });

      const data = await res.json();
      setResponse(data);
    } catch (err) {
      console.error('Error uploading the image:', err);
    }
  };

  return (
    <div className="home-page-container">
      <h1>Home Page</h1>
      <input type="file" accept="image/*" onChange={handleImageChange} />
      {previewImage && (
        <div className="image-preview">
          <h2>Selected Image:</h2>
          <img src={previewImage} alt="Selected" />
        </div>
      )}
      <button onClick={handleUpload}>Upload Image</button>
      {response && (
        <div className="response">
          <h2>Extracted Text:</h2>
          <p>{response.data}</p>
        </div>
      )}
    </div>
  );
};

export default HomePage;
