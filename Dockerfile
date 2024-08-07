# Dockerfile for TensorFlow model deployment

FROM tensorflow/serving:latest

# Copy the model to the container

COPY /saved_model /models/my_model

# Set the model path environment variable

ENV MODEL_PATH=/saved_model

# Run TensorFlow Serving

ENTRYPOINT ["tensorflow_model_server", "--rest_api_port=8501", "--model_name=my_model", "--model_base_path=/models/my_model"]