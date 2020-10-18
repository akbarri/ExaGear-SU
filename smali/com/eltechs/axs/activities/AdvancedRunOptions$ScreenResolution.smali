.class Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;
.super Ljava/lang/Object;
.source "AdvancedRunOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/AdvancedRunOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenResolution"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->width:I

    .line 261
    iput p2, p0, Lcom/eltechs/axs/activities/AdvancedRunOptions$ScreenResolution;->height:I

    return-void
.end method
