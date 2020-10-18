.class final Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
.super Landroid/os/ResultReceiver;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImageReceiver"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field private final zzgdk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/images/zza;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic zzgdl:Lcom/google/android/gms/common/images/ImageManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdl:Lcom/google/android/gms/common/images/ImageManager;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdk:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdk:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const-string p1, "com.google.android.gms.extra.fileDescriptor"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdl:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {p2}, Lcom/google/android/gms/common/images/ImageManager;->zzf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$zzb;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdl:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/images/ImageManager$zzb;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzalm()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.images.LOAD_IMAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.extras.uri"

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.extras.resultReceiver"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.extras.priority"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdl:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/images/zza;)V
    .locals 1

    const-string v0, "ImageReceiver.addImageRequest() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/common/images/zza;)V
    .locals 1

    const-string v0, "ImageReceiver.removeImageRequest() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzc;->zzgn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzgdk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
