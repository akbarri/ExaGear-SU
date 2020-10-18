.class public Lcom/eltechs/axs/helpers/licensing/StrictPolicy;
.super Ljava/lang/Object;
.source "StrictPolicy.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/licensing/Policy;


# instance fields
.field private mLastResponse:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x123

    .line 38
    iput v0, p0, Lcom/eltechs/axs/helpers/licensing/StrictPolicy;->mLastResponse:I

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 2

    .line 60
    iget v0, p0, Lcom/eltechs/axs/helpers/licensing/StrictPolicy;->mLastResponse:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processServerResponse(ILcom/eltechs/axs/helpers/licensing/ResponseData;)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/eltechs/axs/helpers/licensing/StrictPolicy;->mLastResponse:I

    return-void
.end method
