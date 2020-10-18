.class final Lcom/google/android/gms/internal/zzbgg;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final zzgek:Lcom/google/android/gms/internal/zzbgg;

.field private static final zzgel:Lcom/google/android/gms/internal/zzbgh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbgg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbgg;->zzgek:Lcom/google/android/gms/internal/zzbgg;

    new-instance v0, Lcom/google/android/gms/internal/zzbgh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbgh;-><init>(Lcom/google/android/gms/internal/zzbgf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbgg;->zzgel:Lcom/google/android/gms/internal/zzbgh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zzalo()Lcom/google/android/gms/internal/zzbgg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbgg;->zzgek:Lcom/google/android/gms/internal/zzbgg;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbgg;->zzgel:Lcom/google/android/gms/internal/zzbgh;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
