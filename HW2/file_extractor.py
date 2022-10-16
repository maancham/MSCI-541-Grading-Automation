import shutil, os


dst_prefix = os.path.join(os.getcwd(), "results")

os.chdir("Files")

for root, dirs, files in os.walk(os.getcwd()):
    for file in files:
        if file.endswith(".txt"):
            if ("hw2-results" in os.path.join(root, file)):
                dst = os.path.join(dst_prefix, file)
                shutil.copyfile(os.path.join(root, file), dst)
