.class public Lcom/avira/android/idsafeguard/api/gson/ISBreach;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private breachedDate:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:I

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBreachedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->breachedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    const-string v1, "id"

    iget v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v1, "code"

    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "title"

    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "breachedDate"

    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->breachedDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "description"

    iget-object v2, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/gson/ISBreach;->title:Ljava/lang/String;

    return-object v0
.end method
