## About

This project features a custom-built Linux kernel with patches sourced from various contributors, designed to deliver high performance.

## ⚠️ Warning

**This repository is based on Linux Kernel version 6.3.13, which reached its End-of-Life (EOL) on 2023-07-11**. While it's a stable release, please be aware that it no longer receives updates or security patches from the official Linux Kernel maintainers.

## Kernel Patches Source

To access the collection of custom kernel patches used in this repository, visit:

[sirlucjan/kernel-patches](https://github.com/sirlucjan/kernel-patches/tree/master/6.3)

## Tips for Compilation with Optimizations

Enhance your Linux kernel's performance by compiling it with optimization flags tailored to your CPU architecture. Follow these steps:

1. Export optimization flags in your terminal:

```bash
# for more options: <https://docs.kernel.org/kbuild/kbuild.html>
export KCFLAGS="-march=native -mtune=native"
export KCPPFLAGS="-march=native -mtune=native"
export KRUSTFLAGS="-C target-cpu=native -C debug-assertions=n -C debuginfo=0 -C link-dead-code=n -C strip=symbols"
```

2. Compile the kernel using your specific build commands and options. Remember that optimization may result in longer compilation times.

```bash
   make ...
```

## Additional Resources

For further guidance on Linux Kernel development and usage, consult the following resources:

- **Kernel Documentation**: Explore detailed guides and documentation, available in various formats, such as HTML and PDF. Start with [Documentation/admin-guide/README.rst](Documentation/admin-guide/README.rst).

- **Build Documentation**: To generate documentation, use the following commands:
  
```bash
make htmldocs   # Generate HTML documentation
make pdfdocs    # Generate PDF documentation
```

   You can also access the formatted documentation online at [Kernel Documentation](https://www.kernel.org/doc/html/latest/).

- **Text Files**: In the `Documentation/` subdirectory, you'll find various text files, some using the Restructured Text markup notation.

- **Kernel Requirements**: Refer to [Documentation/process/changes.rst](Documentation/process/changes.rst) for information about building and running the kernel, as well as potential issues that may arise during an upgrade.

Feel free to explore and experiment with this customized Linux Kernel, keeping in mind the EOL status of the base version and the optimizations available for enhanced performance.
