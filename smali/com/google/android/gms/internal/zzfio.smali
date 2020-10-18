.class final Lcom/google/android/gms/internal/zzfio;
.super Lcom/google/android/gms/internal/zzfim;


# static fields
.field private static final zzpqv:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfio;->zzpqv:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfim;-><init>(Lcom/google/android/gms/internal/zzfin;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfin;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfio;-><init>()V

    return-void
.end method
