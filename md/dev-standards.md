# Front-End Development Standards

The development standards ensure that we are meeting a minimum technical specification threshold in a formal course and are used as a baseline in the feedback loop and assessment of submitted work by the student.

The following list is influenced by 📃[The Front-End Checklist](https://frontendchecklist.io/) by David Dias.

The references are to [MDN Web Docs](https://developer.mozilla.org/en-US/) sources. MDN is the official reference used in this course for HTML, CSS, JavaScript.

## Overall

- All folders and files follow [the course file and folder naming rules](fileandfoldernamingrules.md 'File and Folder Naming Rules') which include lowercase only, no spaces, and are friendly/semantic.
- No relevant violations of **design principles** of [alignment, proximity, contrast, repetition](https://byui.instructure.com/courses/10157/pages/w02-activity-design-principles 'W02 Activity: Design Principles'), and usable typography.
- The visual appearance of all pages in the site must be **responsive**, uniform, and consistent at three, basic view levels.
- The page/site does not contain spelling and grammatical errors.

## Head

The following are correctly declared and used in the head section of all [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html) pages.

- [HTML5 doctype](https://developer.mozilla.org/en-US/docs/Glossary/Doctype)
- [meta charset attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
- [meta viewport](https://developer.mozilla.org/en-US/docs/Mozilla/Mobile/Viewport_meta_tag) (do not use a maximum-scale)
- [A meaningful title](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title?ref=frontendchecklist) (about 70 characters maximum)
- [meta description](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML#Adding_an_author_and_description?ref=frontendchecklist) (SEO - unique and no more than 300 characters)
- [external CSS file references](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link) are in the proper order

## HTML

- W3C compliant - validated to identify **possible** issues - [W3C validator](https://validator.w3.org/?ref=frontendchecklist)
- [Semantic elements](https://htmlreference.io) are used
- Check for broken links - [W3C Link Checker](https://validator.w3.org/checklink?ref=frontendchecklist)

## CSS

- All embedded or inline CSS is avoided
- W3C compliant - validated to identify possible issues - [W3C validator](https://jigsaw.w3.org/css-validator/)
- [CSS normalize](https://necolas.github.io/normalize.css) is used and up to date
- [Unique ID selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/ID_selectors) - if an ID selector is used, it is unique to a page (the planned use of [class selector](https://developer.mozilla.org/en-US/docs/Web/CSS/Class_selectors) is preferred)
- All pages are tested for responsive web design and with at least two browsers with appropriately sized text, links, and no scrolling to the right nor deadspace.
- No reasonable violations of design principles in the styling and layout in all three views.

## JavaScript

- No errors nor references to unused JavaScript functions per page
- No output to the console in the live version of the page

## Images

- [Optimized](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Images_in_HTML) to fit the design needs of the site (image is no larger than needed at its maximum size on the page)
- [Aspect ratios](https://developers.google.com/web/tools/lighthouse/audits/aspect-ratio) match the saved image ratio
- The [alt attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img) is assigned a relevant value

## Accessibility

- The [lang attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang) is used in the opening <html> tag
- [Headings](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements) are used in the proper order
- [Accessibility](https://developer.mozilla.org/en-US/docs/Web/Accessibility) test errors and warnings are reviewed - [wave testing through the web developer extension](http://wave.webaim.org/)
- No [color contrast](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Accessibility#Color_and_color_contrast) violations - [DevTools Audit](https://developers.google.com/web/tools/chrome-devtools/accessibility/reference#contrast)

## Performance

- The page weight does not exceed 500KB
- [Google Pagespeed test](https://developers.google.com/speed/pagespeed/insights) results at least 90

</div>
