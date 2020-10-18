.class Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets$1;
.super Ljava/lang/Object;
.source "InstallRecipesFromAssets.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ZipInstallerAssets$InstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets$1;->this$0:Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installationFailed(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets$1;->this$0:Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;

    invoke-static {v0, p1}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->access$100(Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;Ljava/lang/String;)V

    return-void
.end method

.method public installationFinished(Ljava/lang/String;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets$1;->this$0:Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;

    invoke-static {p1}, Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;->access$000(Lcom/eltechs/ed/startupActions/InstallRecipesFromAssets;)V

    return-void
.end method
