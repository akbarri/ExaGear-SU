.class Lcom/eltechs/ed/guestContainers/GuestContainersManager$1;
.super Ljava/lang/Object;
.source "GuestContainersManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/guestContainers/GuestContainersManager;->initNewContainer(Lcom/eltechs/ed/guestContainers/GuestContainer;Lcom/eltechs/ed/guestContainers/GuestContainer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/guestContainers/GuestContainersManager;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/guestContainers/GuestContainersManager;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/eltechs/ed/guestContainers/GuestContainersManager$1;->this$0:Lcom/eltechs/ed/guestContainers/GuestContainersManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/SafeFileHelpers;->isSymlink(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
