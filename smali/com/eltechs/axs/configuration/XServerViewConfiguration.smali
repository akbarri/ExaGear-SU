.class public Lcom/eltechs/axs/configuration/XServerViewConfiguration;
.super Ljava/lang/Object;
.source "XServerViewConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
    }
.end annotation


# static fields
.field public static DEFAULT:Lcom/eltechs/axs/configuration/XServerViewConfiguration;


# instance fields
.field private fitStyleH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

.field private fitStyleV:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

.field private showCursor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    invoke-direct {v0}, Lcom/eltechs/axs/configuration/XServerViewConfiguration;-><init>()V

    sput-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->DEFAULT:Lcom/eltechs/axs/configuration/XServerViewConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->showCursor:Z

    .line 28
    sget-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->fitStyleH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    .line 29
    sget-object v0, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    iput-object v0, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->fitStyleV:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    return-void
.end method


# virtual methods
.method public declared-synchronized getFitStyleHorizontal()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->fitStyleH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFitStyleVertical()Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->fitStyleV:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCursorShowNeeded()Z
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->showCursor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFitStyleHorizontal(Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;)V
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    iput-object p1, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->fitStyleH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFitStyleVertical(Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;)V
    .locals 0

    monitor-enter p0

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->fitStyleV:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setShowCursor(Z)V
    .locals 0

    monitor-enter p0

    .line 36
    :try_start_0
    iput-boolean p1, p0, Lcom/eltechs/axs/configuration/XServerViewConfiguration;->showCursor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method
