.class public interface abstract Lcom/avira/android/idsafeguard/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/util/Collection;)Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/idsafeguard/api/gson/ISDismissBreachesApiRequestData$EmailBreaches;",
            ">;)",
            "Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;"
        }
    .end annotation
.end method

.method public abstract a()Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b(Ljava/util/Collection;)Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;"
        }
    .end annotation
.end method

.method public abstract b()Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;
.end method

.method public abstract c()Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
.end method
