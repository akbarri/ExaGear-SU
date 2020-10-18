.class public abstract Lcom/eltechs/axs/helpers/ShaderHelpers;
.super Ljava/lang/Object;
.source "ShaderHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileShader(Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;Ljava/lang/String;)I
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;->access$000(Lcom/eltechs/axs/helpers/ShaderHelpers$ShaderType;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 42
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 44
    new-array p1, p1, [I

    const v1, 0x8b81

    .line 45
    invoke-static {p0, v1, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 46
    aget p1, p1, v0

    if-nez p1, :cond_1

    const-string p1, "ShaderHelpers"

    .line 48
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0

    :cond_1
    return p0
.end method

.method public static createAndLinkProgram(II[Ljava/lang/String;)I
    .locals 1

    .line 58
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 64
    :cond_0
    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 65
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 67
    invoke-static {p2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 69
    new-array p0, p0, [I

    const p1, 0x8b82

    .line 70
    invoke-static {p2, p1, p0, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 72
    aget p0, p0, v0

    if-nez p0, :cond_1

    .line 74
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v0

    :cond_1
    return p2
.end method
