.class public Lcom/avira/android/cropimage/r;
.super Lcom/avira/android/cropimage/a;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/p;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final THUMB_PROJECTION:[Ljava/lang/String;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/cropimage/r;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p11}, Lcom/avira/android/cropimage/a;-><init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 46
    iput p12, p0, Lcom/avira/android/cropimage/r;->h:I

    .line 47
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/avira/android/cropimage/r;->h:I

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 173
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 174
    invoke-static {}, Lcom/avira/android/cropimage/c;->a()Lcom/avira/android/cropimage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/cropimage/r;->a:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/avira/android/cropimage/r;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/cropimage/c;->a(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/avira/android/cropimage/r;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avira/android/cropimage/am;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method
