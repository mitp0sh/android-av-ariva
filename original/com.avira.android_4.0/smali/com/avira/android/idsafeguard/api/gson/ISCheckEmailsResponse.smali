.class public Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contacts:[Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;

.field public user:Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBreachedEmailsContentValues()Ljava/util/ArrayList;
    .locals 6
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
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;->contacts:[Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 36
    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->getCategories()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 38
    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->getArrayOfContentValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;->user:Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->getCategories()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;->user:Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->getArrayOfContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_2
    return-object v1
.end method
