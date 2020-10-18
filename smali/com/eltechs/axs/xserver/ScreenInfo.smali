.class public Lcom/eltechs/axs/xserver/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7883391067d37e92L


# instance fields
.field public final depth:I

.field public final heightInMillimeters:I

.field public final heightInPixels:I

.field public final widthInMillimeters:I

.field public final widthInPixels:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 50
    iput p2, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    .line 51
    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInMillimeters:I

    .line 52
    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInMillimeters:I

    .line 53
    iput p3, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    .line 39
    iput p2, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    .line 40
    iput p3, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInMillimeters:I

    .line 41
    iput p4, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInMillimeters:I

    .line 42
    iput p5, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%dx%dx%d"

    const/4 v1, 0x3

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/eltechs/axs/xserver/ScreenInfo;->depth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
