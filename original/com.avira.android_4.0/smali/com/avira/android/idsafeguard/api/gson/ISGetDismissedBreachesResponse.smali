.class public Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;
.super Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;
.source "SourceFile"


# instance fields
.field private dismissals:[Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrayOfContentValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISGetDismissedBreachesResponse;->dismissals:[Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 31
    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->getArrayOfContentValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-object v1
.end method
