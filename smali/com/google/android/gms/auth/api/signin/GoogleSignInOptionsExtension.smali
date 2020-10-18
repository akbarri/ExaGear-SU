.class public interface abstract Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getExtensionType()I
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end method

.method public abstract getImpliedScopes()Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toBundle()Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end method
