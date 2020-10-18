.class final Lcom/eltechs/axs/helpers/SafeFileHelpers$3;
.super Ljava/lang/Object;
.source "SafeFileHelpers.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/SafeFileHelpers;->byNameFileFilter(Ljava/lang/String;)Lcom/eltechs/axs/helpers/SafeFileHelpers$FileFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$srchName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/eltechs/axs/helpers/SafeFileHelpers$3;->val$srchName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/eltechs/axs/helpers/SafeFileHelpers$3;->val$srchName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
