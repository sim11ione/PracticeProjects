from PIL import Image, ImageEnhance, ImageFilter
import os

# Input path for the image
input_path = '/Users/simonabraham/PycharmProjects/Projects/Python_Project/ImageEditor/IMG_0172.jpeg'

# Output directory path
output_directory = '/Users/simonabraham/PycharmProjects/Projects/Python_Project/ImageEditor'

# Ensure the output directory exists
os.makedirs(output_directory, exist_ok=True)

# Open the image
img = Image.open(input_path)

# Apply image processing operations
edit = img.filter(ImageFilter.SHARPEN).convert('L').rotate(-90)

factor = 1.5
enhancer = ImageEnhance.Contrast(edit)
edit = enhancer.enhance(factor)

# Get the clean name of the input file
base_name = os.path.basename(input_path)
file_name_without_extension = os.path.splitext(base_name)[0]

# Construct the output file path
output_path = os.path.join(output_directory, f'{file_name_without_extension}_edited.jpg')

# Save the edited image
edit.save(output_path)

print(f'Image saved to {output_path}')

