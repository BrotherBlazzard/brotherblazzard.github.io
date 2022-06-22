# File and Folder Naming Rules

When working on the web, there are many things that affect the operation of the files—the browser,the protocols, the client and server operating systems, the programming languages, etc. While many of these are out of your control, there are steps you can take to help keep things **consistent**. Web file and folder naming conventions should be applied to all files and folders in this course in order to practice consistency, ease of troubleshooting, and best-practices. Each organization may have their own guides and 'best' practices as many of these items may be platform specific.

## Course Standards for File and Folder Naming

- Use all **lowercase** or **camelCase**. Platforms and systems handle case sensitivity differently. We can keep it consistent.
- **Do NOT use spaces** in names. Spaces are interpreted obtusely by user agents, therefore, do not use them. The Hypertext Transfer Protocol (HTTP) ignores spaces, except in file names. In file names, it replaces a space with a symbol—"%20." This makes URL's look confusing and can also lend itself to confusion in the mind of site visitors. So avoid using spaces. Instead, if you have to create a visual space, use underscores ( \_ ) or hyphens ( - ).
- Do **NOT use special characters** (e.g., <,>, \, /, #, ?, ! ). Special characters often mean specific things to computers, so just avoid using them completely in the naming of files and folders.
- Use as **short** and as meaningful (**semantic**) of names as possible. Short, meaningful names save you, other developers, and site visitors from having to remember long complicated names for files and folders. When meaningful, they also help with the predictive nature of the file or folder contents when working with those files or folders.
- In this class, the standard folder names for our sites/sub-folders are:
  - **styles** - this folder will contain CSS files (another common name is **css**).
  - **scripts** - this folder will contain JavaScript files (another common name is **js**).
  - **images** - this folder will contain our images.

<div style="background-color: #dbf3fa; padding: 10px; border: 1px solid rgba(0,0,0,.1); font-size: 0.9rem; margin: 0px 15px 15px; color: #000000;">

### Common Naming Conventions in Programming

The following are common case and syntax naming practices found in programming:

- **Camel Case** - each word within a compound word name is capitalized except for the first word (lowerCamelCasing).
  Examples: julySales, getNewReport()
- **Pascal Case** - each word within a compound word name is capitalized (or UpperCamelCasing).
  Examples:  JulySales, GetNewReport()
- **Underscore** or **Snake Case** - each word within a compound word name is separated by underscores. Often found in file names but not preferred due to the fact that underlining will happen with hypertext by default, leading to confusion.
  Examples: july_sales, get_new_report(), soda_springs.html
- **Kebab Case** - all the letters are lower case and each word is separated by a hyphen or minus sign.
Examples: july-sales, get-new-report(), soda-springs.html
</div>

---

### References

- [Dealing With Files - MDN](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Dealing_with_files)
  "Dealing with files discusses some issues you should be aware of so you can set up a sensible file structure for your website."

- [JavaScript Variable Naming - MDN](https://developer.mozilla.org/en-US/docs/MDN/Contribute/Guidelines/Code_guidelines/JavaScript#Variable_naming)

- [A Brief Guide to Clean Code: Naming Conventions - Dev.to](https://dev.to/danialmalik/a-beginner-s-guide-to-clean-code-part1-naming-conventions-139l)
