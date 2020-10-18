.class public Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;
.super Ljava/lang/Object;
.source "TouchScreenControlsInputConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;
    }
.end annotation


# static fields
.field public static DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;


# instance fields
.field public final backKeyAction:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    sget-object v1, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;->XKEYCODE:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;-><init>(Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;)V

    sput-object v0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration;->backKeyAction:Lcom/eltechs/axs/configuration/TouchScreenControlsInputConfiguration$BackKeyAction;

    return-void
.end method
