.class public abstract Lcom/eltechs/axs/helpers/AndroidFeatureTests;
.super Ljava/lang/Object;
.source "AndroidFeatureTests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static haveAndroidApi(Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;)Z
    .locals 1

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->access$000(Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;)I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
