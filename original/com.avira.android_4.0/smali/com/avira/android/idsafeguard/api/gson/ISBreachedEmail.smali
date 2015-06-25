.class public Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private categories:[I

.field private email:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrayOfContentValues()Ljava/util/ArrayList;
    .locals 8
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
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->categories:[I

    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->categories:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 57
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 58
    const-string v6, "email"

    iget-object v7, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->email:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v6, "breachId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public getCategories()[I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->categories:[I

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreachedEmail;->email:Ljava/lang/String;

    return-object v0
.end method
