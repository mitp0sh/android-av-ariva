.class public final Lcom/avira/android/cropimage/l;
.super Lcom/avira/android/cropimage/s;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/q;


# static fields
.field private static final DRM_IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_DATA_PATH:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIME_TYPE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/cropimage/l;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avira/android/cropimage/s;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)Lcom/avira/android/cropimage/a;
    .locals 11

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 103
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 105
    new-instance v1, Lcom/avira/android/cropimage/m;

    iget-object v3, p0, Lcom/avira/android/cropimage/l;->a:Landroid/content/ContentResolver;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {p0, v4, v5}, Lcom/avira/android/cropimage/l;->a(J)Landroid/net/Uri;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DrmImage-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/avira/android/cropimage/m;-><init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected final d()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/avira/android/cropimage/l;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/avira/android/cropimage/l;->c:Landroid/net/Uri;

    sget-object v2, Lcom/avira/android/cropimage/l;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "_id ASC"

    return-object v0
.end method
