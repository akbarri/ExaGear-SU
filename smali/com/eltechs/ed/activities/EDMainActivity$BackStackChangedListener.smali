.class Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;
.super Ljava/lang/Object;
.source "EDMainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/activities/EDMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackStackChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/activities/EDMainActivity;


# direct methods
.method private constructor <init>(Lcom/eltechs/ed/activities/EDMainActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/ed/activities/EDMainActivity;Lcom/eltechs/ed/activities/EDMainActivity$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;-><init>(Lcom/eltechs/ed/activities/EDMainActivity;)V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity$BackStackChangedListener;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-static {v0}, Lcom/eltechs/ed/activities/EDMainActivity;->access$400(Lcom/eltechs/ed/activities/EDMainActivity;)V

    return-void
.end method
