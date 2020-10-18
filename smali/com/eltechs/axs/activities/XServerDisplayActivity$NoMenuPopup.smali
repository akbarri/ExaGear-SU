.class Lcom/eltechs/axs/activities/XServerDisplayActivity$NoMenuPopup;
.super Ljava/lang/Object;
.source "XServerDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/XServerDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoMenuPopup"
.end annotation


# static fields
.field public static final INSTANCE:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Lcom/eltechs/axs/activities/XServerDisplayActivity$NoMenuPopup;

    invoke-direct {v0}, Lcom/eltechs/axs/activities/XServerDisplayActivity$NoMenuPopup;-><init>()V

    sput-object v0, Lcom/eltechs/axs/activities/XServerDisplayActivity$NoMenuPopup;->INSTANCE:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
