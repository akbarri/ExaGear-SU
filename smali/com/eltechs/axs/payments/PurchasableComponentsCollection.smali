.class public Lcom/eltechs/axs/payments/PurchasableComponentsCollection;
.super Ljava/lang/Object;
.source "PurchasableComponentsCollection.java"


# static fields
.field private static final DEFAULT_TEST_RUN_DURATION_MILLIS:J = 0x927c0L

.field private static final DEFAULT_TRIAL_PERIOD_MILLIS:J = 0xf731400L

.field private static final LOG_TAG:Ljava/lang/String; = "IabManager"

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field private static final MILLIS_IN_MINUTE:J = 0xea60L

.field private static final MONTH_MILLIS:J = 0x9fa52400L


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private errorMsg:Ljava/lang/String;

.field private googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

.field private iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

.field private iabInventory:Lcom/eltechs/axs/helpers/iab/Inventory;

.field iabSetupDone:Z

.field private final interactionCompletionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

.field private isFake:Z

.field private logEnabled:Z

.field mGotInventoryListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

.field mGotInventoryWithPricesListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

.field mPurchaseFinishedListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

.field private purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

.field private final purchasableComponentsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/payments/PurchasableComponent;",
            ">;"
        }
    .end annotation
.end field

.field private remoteOwnedSkus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private skuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private testRunDurationExpireTime:J

.field private final testRunDurationMillis:J

.field private testRunDurationStartTime:J

.field private trialPeriodExpireTime:J

.field private final trialPeriodMillis:J

.field private trialPeriodStartTime:J

.field private unlimPromoSkus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unlimSkus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->logEnabled:Z

    .line 81
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    .line 85
    iput-boolean v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabSetupDone:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->skuList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimSkus:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->remoteOwnedSkus:Ljava/util/Map;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    .line 94
    sget-object v0, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->interactionCompletionCallbacks:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    const-wide/32 v2, 0xf731400

    .line 107
    iput-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodMillis:J

    .line 111
    iput-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationStartTime:J

    const-wide/32 v0, 0x927c0

    .line 113
    iput-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationMillis:J

    .line 457
    new-instance v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$5;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mGotInventoryWithPricesListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    .line 485
    new-instance v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$6;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mGotInventoryListener:Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;

    .line 587
    new-instance v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$7;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mPurchaseFinishedListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 124
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->applicationContext:Landroid/content/Context;

    .line 125
    iput-boolean p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isFake:Z

    .line 127
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/ipc/IabIpc$Request;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/helpers/iab/Inventory;)Lcom/eltechs/axs/helpers/iab/Inventory;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabInventory:Lcom/eltechs/axs/helpers/iab/Inventory;

    return-object p1
.end method

.method static synthetic access$102(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/ipc/IabIpc$Request;)Lcom/eltechs/axs/payments/ipc/IabIpc$Request;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/util/Map;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->remoteOwnedSkus:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->callGooglePlayInteractionCompletionCallbacksIfNeed()V

    return-void
.end method

.method static synthetic access$400(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/helpers/iab/IabHelper;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    return-object p0
.end method

.method static synthetic access$502(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/helpers/iab/IabHelper;)Lcom/eltechs/axs/helpers/iab/IabHelper;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->errorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->changeGooglePlayInteractionState(Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)Ljava/util/ArrayList;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->skuList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private callGooglePlayInteractionCompletionCallbacksIfNeed()V
    .locals 2

    .line 316
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 318
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->HAVE_DATA_LOCALLY:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->ERROR_OCCURRED:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-eq v0, v1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    if-eqz v0, :cond_1

    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->interactionCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;

    .line 330
    invoke-interface {v1}, Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;->googlePlayInteractionCompleted()V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->interactionCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private changeGooglePlayInteractionState(Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    .line 338
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->callGooglePlayInteractionCompletionCallbacksIfNeed()V

    return-void
.end method

.method private checkUiThread()V
    .locals 2

    .line 517
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 518
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Functions of PurchasableComponentsCollection must be called from the GUI thread only."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/Class;Landroid/content/Context;)Lcom/eltechs/axs/payments/PurchasableComponentsCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/eltechs/axs/payments/PurchasableComponentsCollection;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->create(Ljava/lang/Class;Landroid/content/Context;Z)Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/Class;Landroid/content/Context;Z)Lcom/eltechs/axs/payments/PurchasableComponentsCollection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/eltechs/axs/payments/PurchasableComponentsCollection;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v4, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$1;

    invoke-direct {v4, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$1;-><init>(Ljava/util/List;)V

    .line 158
    new-instance v5, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$2;

    invoke-direct {v5, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$2;-><init>(Ljava/util/List;)V

    .line 168
    :try_start_0
    const-class v6, Lcom/eltechs/axs/payments/PurchasableComponent;

    invoke-static {v6}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->publicStaticFields(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;

    move-result-object v6

    invoke-static {p0, v4, v6}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->doWithFields(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;)V

    .line 169
    const-class v4, Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    invoke-static {v4}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->publicStaticFields(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;

    move-result-object v4

    invoke-static {p0, v5, v4}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->doWithFields(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$FieldFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, "unlimSkus"

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "unlimPromoSkus"

    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-object v4, v3

    goto :goto_0

    :catch_1
    move-object v4, v3

    :catch_2
    const/4 p0, 0x0

    const-string v3, "Enumeration of public static fields in a public class has failed. How come?"

    .line 180
    invoke-static {p0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 183
    :catch_3
    :goto_0
    new-instance p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;

    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;-><init>(Landroid/content/Context;Z)V

    .line 184
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->setPurchasableComponents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)V

    return-object p0
.end method

.method private deleteOldVersionInstallDataFile(I)V
    .locals 4

    add-int/lit8 v0, p1, -0x1

    :goto_0
    add-int/lit8 v1, p1, -0x6

    const/4 v2, 0x0

    .line 866
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 869
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicFileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 875
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicFileNameObsolete(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 878
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 882
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicDirPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicFileNameObsolete(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method private getMagicDirPath()Ljava/lang/String;
    .locals 2

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 834
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "/"

    return-object v0
.end method

.method private getMagicFileName(I)Ljava/lang/String;
    .locals 2

    .line 845
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/eltechs/axs/helpers/Base64;->encodeWebSafe([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMagicFileNameObsolete(I)Ljava/lang/String;
    .locals 2

    .line 853
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 858
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pm"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRemoteSubsPackageName()Ljava/lang/String;
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->getRemoteSubscription()Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 373
    :cond_1
    iget-object v0, v0, Lcom/eltechs/axs/payments/PurchasableComponentGroup$RemoteSubscription;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private initTestRunDurations()V
    .locals 4

    .line 730
    iget-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 734
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationStartTime:J

    .line 735
    iget-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationStartTime:J

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationExpireTime:J

    return-void
.end method

.method private initTrialTimes()V
    .locals 10

    .line 743
    iget-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/AppConfig;->getInstance(Landroid/content/Context;)Lcom/eltechs/axs/AppConfig;

    move-result-object v0

    .line 753
    :try_start_0
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 754
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 764
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getTrialBeginTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 766
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    goto :goto_0

    .line 769
    :cond_1
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    .line 771
    :goto_0
    iget-wide v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodExpireTime:J

    .line 778
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, v4}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->deleteOldVersionInstallDataFile(I)V

    .line 779
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicDirPath()Ljava/lang/String;

    move-result-object v5

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getMagicFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 784
    iget-wide v8, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 786
    :cond_2
    invoke-static {v4}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-wide v4, v2

    :goto_1
    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 796
    iget-wide v8, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    .line 797
    iget-wide v8, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodExpireTime:J

    add-long/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodExpireTime:J

    .line 801
    :cond_3
    invoke-virtual {v0}, Lcom/eltechs/axs/AppConfig;->getTrialBeginTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    .line 803
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setTrialBeginTime(Ljava/util/Date;)V

    .line 804
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodExpireTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/AppConfig;->setTrialExpireTime(Ljava/util/Date;)V

    .line 805
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/firebase/FAHelper;->logGotTrialEvent(Landroid/content/Context;)V

    :cond_4
    return-void

    :catch_1
    move-exception v0

    .line 757
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->logEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "IabManager"

    .line 525
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private makeIabSetupAndInitialRetrievalOfGooglePlayData()V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 404
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v3, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    const-string v0, "Creating IAB helper."

    .line 408
    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->logDebug(Ljava/lang/String;)V

    .line 409
    new-instance v0, Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->applicationContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    .line 410
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-boolean v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->logEnabled:Z

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->enableDebugLogging(Z)V

    const-string v0, "Starting IAB setup."

    .line 415
    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->logDebug(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    new-instance v1, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$4;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->startSetup(Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method private makeInitialRetrievalOfGooglePlayData()V
    .locals 3

    .line 235
    iget-boolean v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isFake:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/eltechs/axs/helpers/iab/Inventory;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/iab/Inventory;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabInventory:Lcom/eltechs/axs/helpers/iab/Inventory;

    .line 238
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->remoteOwnedSkus:Ljava/util/Map;

    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getRemoteSubsPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->HAVE_DATA_LOCALLY:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->changeGooglePlayInteractionState(Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->startObtainingRemotePaymentsData()V

    .line 243
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->makeIabSetupAndInitialRetrievalOfGooglePlayData()V

    :goto_0
    return-void
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 813
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 814
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 815
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private startObtainingRemotePaymentsData()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 380
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getRemoteSubsPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 386
    :cond_1
    new-instance v1, Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    invoke-direct {v1}, Lcom/eltechs/axs/payments/ipc/IabIpc$Request;-><init>()V

    iput-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    .line 387
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    iget-object v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->applicationContext:Landroid/content/Context;

    new-instance v3, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;

    invoke-direct {v3, p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$3;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/eltechs/axs/payments/ipc/IabIpc$Request;->sendRequest(Landroid/content/Context;Ljava/lang/String;Lcom/eltechs/axs/payments/ipc/IabIpc$Response;)V

    return-void
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 821
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 822
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public addGooglePlayInteractionCompletionCallback(Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 285
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->interactionCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->callGooglePlayInteractionCompletionCallbacksIfNeed()V

    return-void
.end method

.method public addGooglePlayInteractionCompletionCallbackOnlyChange(Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;)V
    .locals 4

    .line 294
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 308
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 309
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 311
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->interactionCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buyItem(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 7

    .line 546
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 547
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 548
    sget-object v0, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->changeGooglePlayInteractionState(Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    const-string v6, ""

    .line 554
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-object v5, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mPurchaseFinishedListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public buySubscription(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 7

    .line 561
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 562
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 563
    sget-object v0, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    invoke-direct {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->changeGooglePlayInteractionState(Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;)V

    const-string v6, ""

    .line 569
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    iget-object v5, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->mPurchaseFinishedListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public buyUnlim(Landroid/app/Activity;ILcom/eltechs/axs/payments/PurchaseCompletionCallback;)V
    .locals 1

    .line 662
    new-instance v0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;

    invoke-direct {v0, p0, p3}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection$8;-><init>(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;Lcom/eltechs/axs/payments/PurchaseCompletionCallback;)V

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->addGooglePlayInteractionCompletionCallbackOnlyChange(Lcom/eltechs/axs/payments/GooglePlayInteractionCompletionCallback;)V

    .line 672
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/eltechs/axs/helpers/PromoHelper;->isActive(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 674
    iget-object p3, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/PromoHelper;->getDiscount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    .line 677
    :cond_0
    iget-object p3, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimSkus:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 680
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->buyItem(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 2
    .annotation runtime Lcom/eltechs/axs/container/annotations/PreRemove;
    .end annotation

    .line 344
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 346
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->dispose()V

    .line 349
    iput-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    .line 351
    :cond_0
    iput-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->applicationContext:Landroid/content/Context;

    .line 352
    iput-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabInventory:Lcom/eltechs/axs/helpers/iab/Inventory;

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabSetupDone:Z

    .line 355
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/ipc/IabIpc$Request;->cleanup()V

    .line 358
    iput-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->ipcRequest:Lcom/eltechs/axs/payments/ipc/IabIpc$Request;

    :cond_1
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 268
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object v1, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->ERROR_OCCURRED:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 269
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlayInteractionState()Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;
    .locals 1

    .line 274
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 275
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    return-object v0
.end method

.method public getIabInventory()Lcom/eltechs/axs/helpers/iab/Inventory;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabInventory:Lcom/eltechs/axs/helpers/iab/Inventory;

    return-object v0
.end method

.method public getPurchasableComponent(I)Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 256
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Lcom/eltechs/axs/payments/PurchasableComponent;

    return-object p1
.end method

.method public getPurchasableComponent(Ljava/lang/String;)Lcom/eltechs/axs/payments/PurchasableComponent;
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 262
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/payments/PurchasableComponent;

    return-object p1
.end method

.method public getPurchasableComponentGroup()Lcom/eltechs/axs/payments/PurchasableComponentGroup;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    return-object v0
.end method

.method public getPurchasableComponents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/payments/PurchasableComponent;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasableComponentsCount()I
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->checkUiThread()V

    .line 250
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getRemotePackageOwnedSkuList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->remoteOwnedSkus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getTrialPeriodExpirationTime()J
    .locals 4

    .line 711
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->initTrialTimes()V

    .line 712
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->initTestRunDurations()V

    .line 714
    iget-wide v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodExpireTime:J

    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationExpireTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnlimEffectivePriceString()Ljava/lang/String;
    .locals 4

    .line 634
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getIabInventory()Lcom/eltechs/axs/helpers/iab/Inventory;

    move-result-object v0

    .line 636
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eltechs/axs/helpers/PromoHelper;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/eltechs/axs/helpers/PromoHelper;->getDiscount(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 641
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/eltechs/axs/helpers/iab/SkuDetails;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Lcom/eltechs/axs/helpers/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 650
    iget-object v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimSkus:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 651
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/helpers/iab/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/helpers/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/eltechs/axs/helpers/iab/SkuDetails;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getUnlimNoPromoPriceString()Ljava/lang/String;
    .locals 3

    .line 620
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getIabInventory()Lcom/eltechs/axs/helpers/iab/Inventory;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimSkus:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 623
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/eltechs/axs/helpers/iab/SkuDetails;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->iabHelper:Lcom/eltechs/axs/helpers/iab/IabHelper;

    .line 577
    invoke-virtual {v0, p1, p2, p3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 579
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->googlePlayInteractionState:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    sget-object p2, Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;->WAITING_FOR_GPLAY_RESPONSE:Lcom/eltechs/axs/payments/impl/GooglePlayInteractionState;

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    move v1, p3

    :cond_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    return p3

    :cond_1
    return v1
.end method

.method public isFake()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isFake:Z

    return v0
.end method

.method public isPrepaidPeriodActive()Z
    .locals 6

    .line 685
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->getIabInventory()Lcom/eltechs/axs/helpers/iab/Inventory;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimSkus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 689
    invoke-virtual {v0, v2}, Lcom/eltechs/axs/helpers/iab/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 694
    :goto_0
    iget-object v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 696
    iget-object v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 697
    invoke-virtual {v0, v4}, Lcom/eltechs/axs/helpers/iab/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    invoke-virtual {v0}, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->isSubscriptionActive()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public isTrialPeriodActive()Z
    .locals 4

    .line 719
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->initTrialTimes()V

    .line 720
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->initTestRunDurations()V

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 723
    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodStartTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->trialPeriodExpireTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationStartTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->testRunDurationExpireTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->isFake()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPurchasableComponents(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/payments/PurchasableComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/payments/PurchasableComponentGroup;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const-string v1, "setPurchasableComponents() can be called only once."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/payments/PurchasableComponent;

    .line 198
    invoke-interface {v0}, Lcom/eltechs/axs/payments/PurchasableComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "There are several PurchasableComponent instances with the same name \'%s\'."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->skuList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move p1, v1

    .line 208
    :goto_1
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->skuList:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 213
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    .line 216
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 217
    iput-object p2, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->purchasableComponentGroup:Lcom/eltechs/axs/payments/PurchasableComponentGroup;

    .line 218
    invoke-virtual {p2, p0}, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->attach(Lcom/eltechs/axs/payments/PurchasableComponentsCollection;)V

    .line 219
    iget-object v0, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->skuList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/eltechs/axs/payments/PurchasableComponentGroup;->getSkuList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 222
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimSkus:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {p4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->unlimPromoSkus:Landroid/util/SparseArray;

    .line 225
    invoke-direct {p0}, Lcom/eltechs/axs/payments/PurchasableComponentsCollection;->makeInitialRetrievalOfGooglePlayData()V

    return-void
.end method
