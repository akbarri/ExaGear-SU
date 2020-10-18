.class public Lcom/eltechs/axs/helpers/iab/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;,
        Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;,
        Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field static final NO_REQUEST_CODE:I = -0x1

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mAsyncRunner:Ljava/util/concurrent/ExecutorService;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mRequestCodeOld:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    .line 77
    iput-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 83
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSetupDone:Z

    .line 86
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDisposed:Z

    .line 89
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 92
    iput-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 93
    iput-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 97
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncInProgress:Z

    const/4 v0, 0x1

    .line 100
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    .line 174
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 1003
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 996
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 998
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkUiThread()V
    .locals 2

    .line 989
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 991
    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    .line 792
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 796
    array-length v0, v1

    if-ge v2, v0, :cond_0

    aget-object p0, v1, v2

    return-object p0

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 799
    array-length v1, v0

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 802
    :cond_2
    aget-object p0, v0, p0

    return-object p0

    .line 800
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method consume(Lcom/eltechs/axs/helpers/iab/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/iab/IabException;
        }
    .end annotation

    .line 685
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 686
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 688
    iget-object v0, p1, Lcom/eltechs/axs/helpers/iab/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Lcom/eltechs/axs/helpers/iab/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/eltechs/axs/helpers/iab/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-virtual {p1}, Lcom/eltechs/axs/helpers/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v2, ""

    .line 696
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 702
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 703
    iget-object v2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 708
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 709
    new-instance v2, Lcom/eltechs/axs/helpers/iab/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 697
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 698
    new-instance v0, Lcom/eltechs/axs/helpers/iab/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 713
    new-instance v1, Lcom/eltechs/axs/helpers/iab/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public consumeAsync(Lcom/eltechs/axs/helpers/iab/Purchase;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;)V
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 754
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 757
    invoke-virtual {p0, v0, p2, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/helpers/iab/Purchase;",
            ">;",
            "Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 766
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 767
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p0, p1, v0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/helpers/iab/Purchase;",
            ">;",
            "Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;",
            "Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 952
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 953
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkUiThread()V

    const-string v0, "consume"

    .line 954
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 955
    iget-object v6, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/eltechs/axs/helpers/iab/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/helpers/iab/IabHelper$3;-><init>(Lcom/eltechs/axs/helpers/iab/IabHelper;Ljava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/eltechs/axs/helpers/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public dispose()V
    .locals 4

    .line 314
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkUiThread()V

    .line 316
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 317
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "Disposing."

    .line 325
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSetupDone:Z

    .line 327
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    const-string v0, "Unbinding from service."

    .line 328
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDisposed:Z

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 333
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 334
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 335
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    .line 336
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    .line 188
    iput-boolean p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    .line 182
    iput-boolean p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugLog:Z

    .line 183
    iput-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1016
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncInProgress:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t end async operation because async operation is NOT in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ""

    .line 1018
    iput-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1019
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    .line 1007
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is in progress."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_0
    iput-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1010
    iput-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncInProgress:Z

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 807
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 809
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 812
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 813
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 815
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 823
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 825
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 828
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 829
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 831
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    .line 467
    :goto_0
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 469
    iget v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCodeOld:I

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    const-string v4, "not correct check, but we use it for temporary control"

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 471
    iget v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    if-ne v3, v1, :cond_3

    return v0

    .line 472
    :cond_3
    iget v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    if-eq p1, v3, :cond_4

    return v0

    .line 474
    :cond_4
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string p1, "handleActivityResult"

    .line 475
    invoke-direct {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagEndAsync()V

    .line 479
    iput v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    const/16 p1, -0x3ea

    const/4 v3, 0x0

    if-nez p3, :cond_6

    const-string p2, "Null data in IAB activity result."

    .line 482
    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 483
    new-instance p2, Lcom/eltechs/axs/helpers/iab/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_5
    return v2

    .line 488
    :cond_6
    invoke-virtual {p0, p3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v4

    const-string v5, "INAPP_PURCHASE_DATA"

    .line 489
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "INAPP_DATA_SIGNATURE"

    .line 490
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-ne p2, v1, :cond_d

    if-nez v4, :cond_d

    const-string p2, "Successful resultcode from purchase activity."

    .line 493
    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase data: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 495
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data signature: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 496
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extras: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 497
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected item type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v5, :cond_b

    if-nez v6, :cond_7

    goto/16 :goto_3

    .line 509
    :cond_7
    :try_start_0
    new-instance p2, Lcom/eltechs/axs/helpers/iab/Purchase;

    iget-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v5, v6}, Lcom/eltechs/axs/helpers/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Lcom/eltechs/axs/helpers/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 513
    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/eltechs/axs/helpers/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 515
    new-instance v0, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 v1, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 516
    iget-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, v0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_8
    return v2

    :cond_9
    const-string p3, "Purchase signature successfully verified."

    .line 519
    invoke-virtual {p0, p3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabResult;

    const-string p3, "Success"

    invoke-direct {p1, v0, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 530
    iget-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, p1, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    goto/16 :goto_4

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 522
    invoke-virtual {p0, p3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 524
    new-instance p2, Lcom/eltechs/axs/helpers/iab/IabResult;

    const-string p3, "Failed to parse purchase data."

    invoke-direct {p2, p1, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_a
    return v2

    :cond_b
    :goto_3
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 500
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 501
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Extras: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 502
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 503
    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_c
    return v2

    :cond_d
    if-ne p2, v1, :cond_e

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 535
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v4, p2}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 536
    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    goto :goto_4

    :cond_e
    if-nez p2, :cond_f

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 540
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 541
    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    goto :goto_4

    .line 544
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {v4}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 546
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 547
    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_10
    :goto_4
    return v2
.end method

.method public isSetupDone()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSetupDone:Z

    return v0
.end method

.method public isSubscriptionsSupported()Z
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "isSubscriptionsSupported"

    .line 194
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 356
    invoke-virtual/range {v0 .. v5}, Lcom/eltechs/axs/helpers/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 361
    invoke-virtual/range {v0 .. v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v11, p4

    move-object/from16 v15, p5

    const/4 v2, 0x1

    const/4 v14, -0x1

    const/4 v10, 0x0

    if-eq v11, v14, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v10

    .line 394
    :goto_0
    invoke-static {v3}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 395
    iget v3, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    if-ne v3, v14, :cond_1

    goto :goto_1

    :cond_1
    move v2, v10

    :goto_1
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string v2, "launchPurchaseFlow"

    .line 397
    invoke-direct {v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v2, "launchPurchaseFlow"

    .line 398
    invoke-virtual {v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const-string v2, "subs"

    .line 401
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSubscriptionsSupported:Z

    if-nez v2, :cond_3

    .line 402
    new-instance v2, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 v3, -0x3f1

    const-string v4, "Subscriptions are not available."

    invoke-direct {v2, v3, v4}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagEndAsync()V

    if-eqz v15, :cond_2

    .line 405
    invoke-interface {v15, v2, v13}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_2
    return-void

    .line 410
    :cond_3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructing buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 411
    iget-object v2, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 412
    invoke-virtual {v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v3, :cond_5

    .line 414
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to buy item, Error response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagEndAsync()V

    .line 416
    new-instance v2, Lcom/eltechs/axs/helpers/iab/IabResult;

    const-string v4, "Unable to buy item"

    invoke-direct {v2, v3, v4}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v15, :cond_4

    .line 417
    invoke-interface {v15, v2, v13}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    goto/16 :goto_5

    :cond_5
    :try_start_2
    const-string v3, "BUY_INTENT"

    .line 421
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 423
    iput v11, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    .line 424
    iput v11, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCodeOld:I

    .line 425
    iput-object v15, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchaseListener:Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 426
    iput-object v9, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 427
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 429
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 430
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v9, p1

    move-object v10, v2

    move-object v2, v13

    move v13, v3

    move v3, v14

    move v14, v4

    move-object v4, v15

    move v15, v5

    .line 427
    :try_start_3
    invoke-virtual/range {v9 .. v15}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    :goto_2
    move-object v5, v0

    .line 442
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagEndAsync()V

    .line 445
    iput v3, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    .line 447
    new-instance v3, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "Remote exception while starting purchase flow"

    invoke-direct {v3, v5, v6}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_6

    .line 448
    invoke-interface {v4, v3, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    :goto_4
    move-object v5, v0

    .line 433
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v5}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagEndAsync()V

    .line 436
    iput v3, v1, Lcom/eltechs/axs/helpers/iab/IabHelper;->mRequestCode:I

    .line 438
    new-instance v3, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/16 v5, -0x3ec

    const-string v6, "Failed to send intent."

    invoke-direct {v3, v5, v6}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_6

    .line 439
    invoke-interface {v4, v3, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/eltechs/axs/helpers/iab/IabResult;Lcom/eltechs/axs/helpers/iab/Purchase;)V

    :cond_6
    :goto_6
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 366
    invoke-virtual/range {v0 .. v5}, Lcom/eltechs/axs/helpers/iab/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/eltechs/axs/helpers/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    .line 1023
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/eltechs/axs/helpers/iab/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/eltechs/axs/helpers/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/iab/IabException;
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string p3, "queryInventory"

    .line 568
    invoke-direct {p0, p3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 570
    :try_start_0
    new-instance p3, Lcom/eltechs/axs/helpers/iab/Inventory;

    invoke-direct {p3}, Lcom/eltechs/axs/helpers/iab/Inventory;-><init>()V

    const-string v0, "inapp"

    .line 571
    invoke-virtual {p0, p3, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryPurchases(Lcom/eltechs/axs/helpers/iab/Inventory;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v0, p2}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "inapp"

    .line 577
    invoke-virtual {p0, v0, p3, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/eltechs/axs/helpers/iab/Inventory;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabException;

    const-string p2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, v0, p2}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 584
    :cond_1
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v0, :cond_3

    const-string v0, "subs"

    .line 585
    invoke-virtual {p0, p3, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryPurchases(Lcom/eltechs/axs/helpers/iab/Inventory;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    new-instance p1, Lcom/eltechs/axs/helpers/iab/IabException;

    const-string p2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, v0, p2}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "subs"

    .line 591
    invoke-virtual {p0, p1, p3, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/eltechs/axs/helpers/iab/Inventory;Ljava/util/List;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 593
    new-instance p2, Lcom/eltechs/axs/helpers/iab/IabException;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p3

    :catch_0
    move-exception p1

    .line 604
    new-instance p2, Lcom/eltechs/axs/helpers/iab/IabException;

    const/16 p3, -0x3ea

    const-string v0, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 601
    new-instance p2, Lcom/eltechs/axs/helpers/iab/IabException;

    const/16 p3, -0x3e9

    const-string v0, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/eltechs/axs/helpers/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 667
    invoke-virtual {p0, v0, v1, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 671
    invoke-virtual {p0, p1, v0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 635
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 636
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    .line 637
    invoke-direct {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 638
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkUiThread()V

    const-string v0, "refresh inventory"

    .line 639
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 641
    iget-object v6, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mAsyncRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/eltechs/axs/helpers/iab/IabHelper$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/helpers/iab/IabHelper$2;-><init>(Lcom/eltechs/axs/helpers/iab/IabHelper;ZLjava/util/List;Lcom/eltechs/axs/helpers/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method queryPurchases(Lcom/eltechs/axs/helpers/iab/Inventory;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 846
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 850
    invoke-virtual {p0, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned items response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 853
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 856
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 857
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    .line 858
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 863
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 865
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 867
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move v6, v2

    move v2, v0

    .line 870
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 871
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 872
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 873
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 875
    iget-object v10, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v7, v8}, Lcom/eltechs/axs/helpers/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 876
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 877
    new-instance v9, Lcom/eltechs/axs/helpers/iab/Purchase;

    invoke-direct {v9, p2, v7, v8}, Lcom/eltechs/axs/helpers/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {v9}, Lcom/eltechs/axs/helpers/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "BUG: empty/null token!"

    .line 880
    invoke-virtual {p0, v8}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 881
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 885
    :cond_2
    invoke-virtual {p1, v9}, Lcom/eltechs/axs/helpers/iab/Inventory;->addPurchase(Lcom/eltechs/axs/helpers/iab/Purchase;)V

    goto :goto_2

    :cond_3
    const-string v6, "Purchase signature verification **FAILED**. Not adding item."

    .line 888
    invoke-virtual {p0, v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   Purchase data: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 890
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   Signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 895
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v6, :cond_5

    const/16 v0, -0x3eb

    :cond_5
    return v0

    :cond_6
    move v2, v6

    goto/16 :goto_0

    :cond_7
    :goto_3
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 859
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/eltechs/axs/helpers/iab/Inventory;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/eltechs/axs/helpers/iab/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 904
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    invoke-virtual {p2, p1}, Lcom/eltechs/axs/helpers/iab/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    .line 908
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 909
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 910
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 915
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const-string p1, "querySkuDetails: nothing to do because there are no SKUs."

    .line 916
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 920
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ITEM_ID_LIST"

    .line 921
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 922
    iget-object v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1, p3}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "DETAILS_LIST"

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 926
    invoke-virtual {p0, p3}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 928
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSkuDetails() failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_3
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 932
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    :cond_4
    const-string v0, "DETAILS_LIST"

    .line 937
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 940
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 941
    new-instance v2, Lcom/eltechs/axs/helpers/iab/SkuDetails;

    invoke-direct {v2, p1, v0}, Lcom/eltechs/axs/helpers/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got sku details: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2, v2}, Lcom/eltechs/axs/helpers/iab/Inventory;->addSkuDetails(Lcom/eltechs/axs/helpers/iab/SkuDetails;)V

    goto :goto_1

    :cond_5
    return v1
.end method

.method public startSetup(Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 227
    invoke-direct {p0}, Lcom/eltechs/axs/helpers/iab/IabHelper;->checkNotDisposed()V

    .line 228
    iget-boolean v0, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 229
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null listener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Starting in-app billing setup."

    .line 239
    invoke-virtual {p0, v1}, Lcom/eltechs/axs/helpers/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/eltechs/axs/helpers/iab/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/eltechs/axs/helpers/iab/IabHelper$1;-><init>(Lcom/eltechs/axs/helpers/iab/IabHelper;Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 296
    iget-object p1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 297
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    goto :goto_0

    .line 301
    :cond_2
    new-instance v0, Lcom/eltechs/axs/helpers/iab/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/helpers/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/eltechs/axs/helpers/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/eltechs/axs/helpers/iab/IabResult;)V

    :goto_0
    return-void
.end method
