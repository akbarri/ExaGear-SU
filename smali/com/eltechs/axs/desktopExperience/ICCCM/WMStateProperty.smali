.class public Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;
.super Ljava/lang/Object;
.source "WMStateProperty.java"


# instance fields
.field public final iconWindow:Lcom/eltechs/axs/xserver/Window;

.field public final state:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;->state:Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateValues;

    .line 20
    iput-object p2, p0, Lcom/eltechs/axs/desktopExperience/ICCCM/WMStateProperty;->iconWindow:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method
