.class public final Lcom/google/android/gms/internal/zzaq;
.super Ljava/lang/Object;


# instance fields
.field private final zzcc:I

.field private final zzcd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzce:I

.field private final zzcf:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzaq;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzl;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaq;->zzcc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaq;->zzcd:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/zzaq;->zzce:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaq;->zzcf:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq;->zzcf:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaq;->zzce:I

    return v0
.end method

.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaq;->zzcc:I

    return v0
.end method

.method public final zzp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq;->zzcd:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
