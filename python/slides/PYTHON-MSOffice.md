# Python: MS Office Automation

---

## Lesson Objectives

  * Introduction to MS Office Automation
  * python-docx
  * python-pptx
  * xlsxwriter
  * Pandas Integration
  * Win32 / COM integration

Notes:

---

## Introduction to MS Office Integration

  * Python allows automating the creation of Microsoft Office Documents
  * Generally *NOT* developed or supported by Microsoft
  * Does *NOT* require Microsoft Office to use.


Notes:

---

## Why Use MS Office from Python

  * Automating the creation of a MS Word document from an application
  * Scripting the creation of a powerpoint presentation.
  * Exporting data to/from Pandas into Excel.

Notes:

---

## Python vs Microsoft AUtomation tools
  * Microsoft Office can be automated through Microsoft TEchnologies:
    - VBScript
    - VBA
    - .NET (C#, VB.NET)
    - C++
  * These technologies generally DO require a copy of office
  * Essentially they remote control Office itself using COM/DCOM

---


## Advantages

  * Accuracy : results will be guarunteed to look correct in Word/Powerpoint/Excel
  * MS Office file formats are proprietary and nearly impossible to duplicate without
    resorting to automation

---

## Disadvantages
  * Scalability limitations
  * Not very stable
  * Not recommended or supported for server-side programming
  * Headaches of license administration
  * COM is a very archaic tecnnology
  * Only runs on Windows
  * Does NOT run on Python

---

### Using COM from Python

 * We can use COM on Python to control Office
 * This has many of the same advantages and disadvantages
 * NOT supported by Microsoft
 * Possibly violates license if used server-side
 * Windows Only

---

### Example

```python
excel = win32.gencache.EnsureDispatch('Excel.Application')

excel.Visible = True
_ = input("Press ENTER to quit:")

excel.Application.Quit()
```

---

### Why use COM?

 * Mainly for testing 
 * If you want to use python to 


## Summary

 * AUtomation technologies are not recommended for server-side use.
 * Primarily used for developers to automate or script office releated tasks on the desktop.
 * Microsoft strongly discourages developers from doing any sort of automation on the server.
 * Licensing issues are also very difficult to solve as both clients and server are supposed 
   to have the same versions of office.
 



# Installation
---

##  Installing packages

  * The packages here can generally be installed with pip
  * `pip install python-docx`
  * `pip install python-pptx`
  * `pip install xlsxwriter`


---

## MS Office XML file formats
  * In 2007, Microsoft introduced the open standard XML file formats in office.
  * In theory, this allows any software to open and write MS Office documents.
  * However, MS doesn't want competitors like OpenOffice to be able to create documents with 100% compatibility with office
  * In practice, it is nearly impossible to create and edit documents that look identical to what Office itself would do.


---


# Use

## Microsoft Word

```python
from docx import Document
from docx.shared import Inches

document = Document()

document.add_heading('Document Title', 0)

p = document.add_paragraph('Lorem ipsum ')
p.add_run('bold').bold = True
p.add_run(' lorem ')
p.add_run('italic.').italic = True

document.save('a.docx')

```

---

## Microsoft Powerpoint

```python
from pptx import Presentation

prs = Presentation()
title_slide_layout = prs.slide_layouts[0]
slide = prs.slides.add_slide(title_slide_layout)
title = slide.shapes.title
subtitle = slide.placeholders[1]

title.text = "Title"
subtitle.text = "Subtitle!"

prs.save('test.pptx')
```

---

## Microsoft Excel

```python
import xlsxwriter

workbook = xlsxwriter.Workbook('hello.xlsx')
worksheet = workbook.add_worksheet()

worksheet.write('A1', 'Hello world')

workbook.close()
```

---



# MS Office Invocation

---

## Opening the MS Office Application from Python 

 * There is no platform independent way to open up office applications from Python.
 * Each OS has to be handled separately.
 * Windows: `os.startfile()`
 * Mac: `subprocess.call(('open', filepath))`
 * Linux: `subprocess.call(('xdg-open', filepath))


---

## Python

```python
import subprocess, os, platform
if platform.system() == 'Darwin':       # macOS
    subprocess.call(('open', filepath))
elif platform.system() == 'Windows':    # Windows
    os.startfile(filepath)
else:                                   # linux variants
    subprocess.call(('xdg-open', filepath))

```

---

