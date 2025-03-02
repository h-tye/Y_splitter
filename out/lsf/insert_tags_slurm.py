#script to insert # within the slurm files, not possible to write tags within lumerical

import os

def comment_first_14_lines_in_directory():
    # Get the directory where the script is located
    directory = os.path.dirname(os.path.abspath(__file__))

    # Iterate through all files in the script's directory
    for filename in os.listdir(directory):
        if filename.endswith(".run.slurm"):  # Check for the .run.slurm extension
            file_path = os.path.join(directory, filename)
            
            with open(file_path, "r") as file:
                lines = file.readlines()
            
            # Add '#' at the beginning of the first 14 lines
            modified_lines = ["#" + line if i < 14 else line for i, line in enumerate(lines)]
            
            with open(file_path, "w") as file:
                file.writelines(modified_lines)
            
            print(f"Modified: {file_path}")

# Run the function
comment_first_14_lines_in_directory()


