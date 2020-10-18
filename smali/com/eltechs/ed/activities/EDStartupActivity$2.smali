.class Lcom/eltechs/ed/activities/EDStartupActivity$2;
.super Ljava/lang/Object;
.source "EDStartupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/activities/EDStartupActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/activities/EDStartupActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/activities/EDStartupActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDStartupActivity$2;->this$0:Lcom/eltechs/ed/activities/EDStartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
