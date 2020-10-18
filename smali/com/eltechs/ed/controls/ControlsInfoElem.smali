.class public Lcom/eltechs/ed/controls/ControlsInfoElem;
.super Ljava/lang/Object;
.source "ControlsInfoElem.java"


# instance fields
.field public final mDescrText:Ljava/lang/String;

.field public final mHeaderText:Ljava/lang/String;

.field public final mImageRes:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mImageRes:I

    .line 18
    iput-object p2, p0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mHeaderText:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/eltechs/ed/controls/ControlsInfoElem;->mDescrText:Ljava/lang/String;

    return-void
.end method
