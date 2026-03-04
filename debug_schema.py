try:
    from rendercv.data.models.curriculum_vitae import CurriculumVitae
    from rendercv.data.models.entry import EducationEntry
    print("CV Fields:", CurriculumVitae.model_fields.keys())
    print("Education Fields:", EducationEntry.model_fields.keys())
except ImportError:
    # Try different import path if version changed
    import rendercv
    print("RenderCV Version:", rendercv.__version__)
    try:
        from rendercv.data.models.cv import CurriculumVitae
        print("CV Fields (alt):", CurriculumVitae.model_fields.keys())
    except Exception as e:
        print("Error:", e)
