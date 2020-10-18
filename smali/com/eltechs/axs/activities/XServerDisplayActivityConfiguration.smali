.class public Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;
.super Ljava/lang/Object;
.source "XServerDisplayActivityConfiguration.java"


# instance fields
.field private horizontalStretchEnabled:Z

.field private menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->menuItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->horizontalStretchEnabled:Z

    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/eltechs/axs/widgets/actions/Action;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->menuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method public isHorizontalStretchEnabled()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->horizontalStretchEnabled:Z

    return v0
.end method

.method public setHorizontalStretchEnabled(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->horizontalStretchEnabled:Z

    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/widgets/actions/Action;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/eltechs/axs/activities/XServerDisplayActivityConfiguration;->menuItems:Ljava/util/List;

    return-void
.end method
