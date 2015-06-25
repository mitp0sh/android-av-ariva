.class public Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;
.super Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;
.source "SourceFile"


# instance fields
.field private breaches:[Lcom/avira/android/idsafeguard/api/gson/ISBreach;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avira/android/idsafeguard/api/gson/ISApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBreachesContentValues()Ljava/util/ArrayList;
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
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;->breaches:[Lcom/avira/android/idsafeguard/api/gson/ISBreach;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 43
    invoke-virtual {v4}, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object v1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;->version:I

    return v0
.end method
