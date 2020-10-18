.class public Lcom/eltechs/axs/fragments/FrameworkFragment;
.super Landroid/support/v4/app/Fragment;
.source "FrameworkFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass::",
        "Lcom/eltechs/axs/applicationState/ApplicationStateBase;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getApplicationState()Lcom/eltechs/axs/applicationState/ApplicationStateBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TStateClass;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    return-object v0
.end method
