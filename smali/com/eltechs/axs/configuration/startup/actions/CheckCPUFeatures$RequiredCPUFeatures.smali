.class public Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;
.super Ljava/lang/Object;
.source "CheckCPUFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequiredCPUFeatures"
.end annotation


# instance fields
.field final isNeonRequired:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckCPUFeatures$RequiredCPUFeatures;->isNeonRequired:Z

    return-void
.end method
