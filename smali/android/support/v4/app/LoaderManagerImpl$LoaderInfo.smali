.class public Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Landroid/arch/lifecycle/MutableLiveData;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/MutableLiveData<",
        "TD;>;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mId:I

.field private mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final mLoader:Landroid/support/v4/content/Loader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mPriorLoader:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroid/support/v4/content/Loader;Landroid/support/v4/content/Loader;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/content/Loader<",
            "TD;>;",
            "Landroid/support/v4/content/Loader<",
            "TD;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    .line 61
    iput p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 62
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 63
    iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 64
    iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    .line 65
    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p2, p1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method destroy(Z)Landroid/support/v4/content/Loader;
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 148
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->cancelLoad()Z

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->abandon()V

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->reset()V

    .line 161
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 163
    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->reset()V

    .line 164
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    return-object p1

    .line 166
    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 210
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    .line 211
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallbacks="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 216
    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 218
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mData="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->getLoader()Landroid/support/v4/content/Loader;

    move-result-object p2

    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result p1

    .line 220
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method getLoader()Landroid/support/v4/content/Loader;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v0
.end method

.method isCallbackWaitingForData()Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->hasActiveObservers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;->hasDeliveredData()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method markForRedelivery()V
    .locals 2

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 111
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 117
    invoke-super {p0, v1}, Landroid/arch/lifecycle/MutableLiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 118
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 3

    .line 75
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 81
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    return-void
.end method

.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/support/v4/content/Loader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 171
    sget-boolean p1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 173
    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_1
    sget-boolean p1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "LoaderManager"

    const-string v0, "onLoadComplete was incorrectly called on a background thread"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/Observer;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer<",
            "TD;>;)V"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 136
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    return-void
.end method

.method setCallback(Landroid/arch/lifecycle/LifecycleOwner;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-direct {v0, v1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;-><init>(Landroid/support/v4/content/Loader;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 99
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 101
    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    if-eqz p2, :cond_0

    .line 102
    iget-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    invoke-virtual {p0, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 104
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 105
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroid/support/v4/app/LoaderManagerImpl$LoaderObserver;

    .line 106
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 188
    invoke-super {p0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->reset()V

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroid/support/v4/content/Loader;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
