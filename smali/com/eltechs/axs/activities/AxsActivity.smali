.class public Lcom/eltechs/axs/activities/AxsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AxsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/activities/AxsActivity$ActivityResultHandler;
    }
.end annotation


# static fields
.field private static final DATA_FRAGMENT_TAG:Ljava/lang/String; = "data"

.field private static final RESULT_VALUE_NAME:Ljava/lang/String; = "AxsActivityResult"

.field private static final bufferedListenerInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/activities/AxsActivity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/activities/BufferedListenerInvoker<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private final activityResultHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/activities/AxsActivity$ActivityResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

.field private firstFreeRequestCode:I

.field private logEnabled:Z

.field private resumed:Z

.field private wasRecreated:Z

.field private wasRecreatedInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/eltechs/axs/activities/AxsActivity;->bufferedListenerInvokers:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "AxsActivity"

    .line 48
    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->logEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->resumed:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->activityResultHandlers:Ljava/util/List;

    const/16 v0, 0x1df2

    .line 52
    iput v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->firstFreeRequestCode:I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->TAG:Ljava/lang/String;

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getMyBufferedListenerInvokers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/activities/BufferedListenerInvoker<",
            "*>;>;"
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/eltechs/axs/activities/AxsActivity;->bufferedListenerInvokers:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    sget-object v1, Lcom/eltechs/axs/activities/AxsActivity;->bufferedListenerInvokers:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getResultEx(Landroid/content/Intent;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "AxsActivityResult"

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private inferListenerClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "ListenerType:Ljava/lang/Object;",
            ">(T",
            "ListenerType;",
            ")",
            "Ljava/lang/Class<",
            "T",
            "ListenerType;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 345
    array-length v3, v0

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "The class %s is used as a listener and must implement exactly one interface."

    new-array v2, v2, [Ljava/lang/Object;

    .line 346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v1

    .line 345
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 348
    aget-object p1, v0, v1

    return-object p1
.end method


# virtual methods
.method protected final alert(Ljava/lang/String;)V
    .locals 4

    .line 263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    iget-object v1, p0, Lcom/eltechs/axs/activities/AxsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing alert dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected final checkUiThread()V
    .locals 2

    .line 238
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    return-void
.end method

.method protected createBufferedListener(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "ListenerType:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "T",
            "ListenerType;",
            ")T",
            "ListenerType;"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AxsActivity;->getMyBufferedListenerInvokers()Ljava/util/Map;

    move-result-object v0

    .line 317
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v1, p2}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->setRealListener(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 324
    :cond_0
    new-instance v1, Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-direct {p0, p2}, Lcom/eltechs/axs/activities/AxsActivity;->inferListenerClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;-><init>(Ljava/lang/Class;)V

    .line 325
    invoke-virtual {v1, p2}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->setRealListener(Ljava/lang/Object;)V

    .line 326
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->getProxy()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final dismissRetainedDialog(Ljava/lang/String;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    iget-object v0, v0, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;

    if-eqz p1, :cond_0

    .line 398
    iget-object v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->isShown:Z

    :cond_0
    return-void
.end method

.method public final enableLogging(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/AxsActivity;->logEnabled:Z

    return-void
.end method

.method protected final hideRetainedDialog(Ljava/lang/String;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    iget-object v0, v0, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;

    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->isShown:Z

    :cond_0
    return-void
.end method

.method public final isActivityResumed()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->resumed:Z

    return v0
.end method

.method public final logDebug(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->logEnabled:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected final varargs logDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 219
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method protected final logInfo(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->logEnabled:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected final varargs logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 232
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") in AxsActivity called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->activityResultHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/activities/AxsActivity$ActivityResultHandler;

    .line 181
    invoke-interface {v1, p1, p2, p3}, Lcom/eltechs/axs/activities/AxsActivity$ActivityResultHandler;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 187
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onCreate() called"

    .line 70
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AxsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AxsActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AxsActivity;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is root activity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AxsActivity;->isTaskRoot()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/AxsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "data"

    .line 85
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/activities/AxsDataFragment;

    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    .line 86
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/eltechs/axs/activities/AxsDataFragment;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/AxsDataFragment;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    .line 89
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    const-string v1, "data"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 91
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const-string p1, "first time activity creation"

    .line 92
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/AxsActivity;->wasRecreated:Z

    .line 96
    iput-boolean p1, p0, Lcom/eltechs/axs/activities/AxsActivity;->wasRecreatedInited:Z

    const-string p1, "activity recreation"

    .line 97
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreateRetainedDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "onDestroy() called"

    .line 160
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    iget-object v0, v0, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;

    .line 166
    iget-object v2, v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    .line 169
    iput-object v2, v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause() called"

    .line 139
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 140
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->resumed:Z

    .line 144
    invoke-direct {p0}, Lcom/eltechs/axs/activities/AxsActivity;->getMyBufferedListenerInvokers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    .line 146
    invoke-virtual {v1}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->clearRealListener()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    const-string v0, "onRestart() called"

    .line 105
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const-string v0, "onResume() called"

    .line 119
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->resumed:Z

    .line 125
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    iget-object v0, v0, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;

    .line 129
    iget-object v3, v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    if-nez v3, :cond_0

    iget-boolean v1, v1, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->isShown:Z

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0, v2}, Lcom/eltechs/axs/activities/AxsActivity;->showRetainedDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "onStart() called"

    .line 112
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop() called"

    .line 153
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/activities/AxsActivity;->logDebug(Ljava/lang/String;)V

    .line 154
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public registerActivityResultHandler(Lcom/eltechs/axs/activities/AxsActivity$ActivityResultHandler;I)I
    .locals 2

    if-lez p2, :cond_0

    .line 196
    iget v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->firstFreeRequestCode:I

    .line 197
    iget v1, p0, Lcom/eltechs/axs/activities/AxsActivity;->firstFreeRequestCode:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/eltechs/axs/activities/AxsActivity;->firstFreeRequestCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object p2, p0, Lcom/eltechs/axs/activities/AxsActivity;->activityResultHandlers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method protected final setResultEx(ILjava/io/Serializable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(ITT;)V"
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AxsActivityResult"

    .line 275
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/activities/AxsActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected final showRetainedDialog(Ljava/lang/String;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    iget-object v0, v0, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/eltechs/axs/activities/AxsActivity;->dataFragment:Lcom/eltechs/axs/activities/AxsDataFragment;

    iget-object v1, v1, Lcom/eltechs/axs/activities/AxsDataFragment;->tag2dialogInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_0
    iget-object v1, v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 373
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/activities/AxsActivity;->onCreateRetainedDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    .line 376
    :cond_1
    iget-boolean p1, v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->isShown:Z

    if-nez p1, :cond_2

    .line 378
    iget-object p1, v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, v0, Lcom/eltechs/axs/activities/AxsDataFragment$DialogInfo;->isShown:Z

    :cond_2
    return-void
.end method

.method protected final wasRecreated()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->wasRecreatedInited:Z

    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 258
    iget-boolean v0, p0, Lcom/eltechs/axs/activities/AxsActivity;->wasRecreated:Z

    return v0
.end method
