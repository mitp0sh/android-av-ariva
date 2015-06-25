.class public Lcom/avira/android/cropimage/s;
.super Lcom/avira/android/cropimage/b;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/q;


# static fields
.field private static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

.field static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_DATA_PATH:I = 0x1

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x2

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIME_TYPE:I = 0x6

.field private static final INDEX_MINI_THUMB_MAGIC:I = 0x3

.field private static final INDEX_ORIENTATION:I = 0x4

.field private static final INDEX_TITLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ImageList"

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "(mime_type in (?, ?, ?))"

.field private static final WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String; = "(mime_type in (?, ?, ?)) AND bucket_id = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/gif"

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/cropimage/s;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v4

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/cropimage/s;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avira/android/cropimage/b;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/avira/android/cropimage/a;
    .locals 14

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 118
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 119
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 120
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    .line 124
    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 125
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 126
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 127
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 128
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v12, v8

    .line 132
    :cond_2
    new-instance v1, Lcom/avira/android/cropimage/r;

    iget-object v3, p0, Lcom/avira/android/cropimage/s;->a:Landroid/content/ContentResolver;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v4, v5}, Lcom/avira/android/cropimage/s;->a(J)Landroid/net/Uri;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v13}, Lcom/avira/android/cropimage/r;-><init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-object v1
.end method

.method protected final b(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected d()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 91
    iget-object v0, p0, Lcom/avira/android/cropimage/s;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/avira/android/cropimage/s;->c:Landroid/net/Uri;

    sget-object v2, Lcom/avira/android/cropimage/s;->IMAGE_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/avira/android/cropimage/s;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "(mime_type in (?, ?, ?))"

    :goto_0
    iget-object v4, p0, Lcom/avira/android/cropimage/s;->e:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/avira/android/cropimage/s;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    array-length v5, v4

    add-int/lit8 v4, v5, 0x1

    new-array v4, v4, [Ljava/lang/String;

    sget-object v6, Lcom/avira/android/cropimage/s;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    invoke-static {v6, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/avira/android/cropimage/s;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    :goto_1
    invoke-virtual {p0}, Lcom/avira/android/cropimage/s;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    return-object v0

    .line 91
    :cond_0
    const-string v3, "(mime_type in (?, ?, ?)) AND bucket_id = ?"

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/avira/android/cropimage/s;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    goto :goto_1
.end method
