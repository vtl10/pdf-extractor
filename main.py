from fastapi import FastAPI, UploadFile, File
import fitz  # PyMuPDF

app = FastAPI()

@app.post("/extract")
async def extract_text(file: UploadFile = File(...)):
    try:
        content = await file.read()
        pdf = fitz.open(stream=content, filetype="pdf")
        full_text = ""
        for page in pdf:
            full_text += page.get_text()
        return {"text": full_text.strip()}
    except Exception as e:
        return {"error": str(e)}
