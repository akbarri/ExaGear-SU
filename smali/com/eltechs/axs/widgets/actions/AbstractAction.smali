.class public abstract Lcom/eltechs/axs/widgets/actions/AbstractAction;
.super Ljava/lang/Object;
.source "AbstractAction.java"

# interfaces
.implements Lcom/eltechs/axs/widgets/actions/Action;


# static fields
.field protected static final CHECKABLE:Z = true

.field protected static final NOT_CHECKABLE:Z


# instance fields
.field private final checkable:Z

.field private enabled:Z

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/widgets/actions/AbstractAction;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->enabled:Z

    .line 35
    iput-boolean p2, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->checkable:Z

    return-void
.end method


# virtual methods
.method protected final getCurrentXServerDisplayActivity()Lcom/eltechs/axs/activities/XServerDisplayActivity;
    .locals 5

    .line 75
    invoke-static {}, Lcom/eltechs/axs/Globals;->getApplicationState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/applicationState/ApplicationStateBase;

    .line 76
    invoke-interface {v0}, Lcom/eltechs/axs/applicationState/ApplicationStateBase;->getCurrentActivity()Lcom/eltechs/axs/activities/FrameworkActivity;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/eltechs/axs/activities/XServerDisplayActivity;

    const-string v2, "A menu was requested by %s which is not a XServerDisplayActivity."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 82
    check-cast v0, Lcom/eltechs/axs/activities/XServerDisplayActivity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final isCheckable()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->checkable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->checkable:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Checkable Actions must implement isChecked()."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->enabled:Z

    return v0
.end method

.method protected setEnabled(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->enabled:Z

    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/widgets/actions/AbstractAction;->name:Ljava/lang/String;

    return-void
.end method
