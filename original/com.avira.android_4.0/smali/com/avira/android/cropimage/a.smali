.class public abstract Lcom/avira/android/cropimage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/p;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:Landroid/net/Uri;

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected final e:I

.field protected f:Ljava/lang/String;

.field protected g:Lcom/avira/android/cropimage/b;

.field private final h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I


# direct methods
.method protected constructor <init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/avira/android/cropimage/a;->j:I

    .line 52
    iput v0, p0, Lcom/avira/android/cropimage/a;->k:I

    .line 57
    iput-object p1, p0, Lcom/avira/android/cropimage/a;->g:Lcom/avira/android/cropimage/b;

    .line 58
    iput-object p2, p0, Lcom/avira/android/cropimage/a;->a:Landroid/content/ContentResolver;

    .line 59
    iput-wide p3, p0, Lcom/avira/android/cropimage/a;->c:J

    .line 60
    iput p5, p0, Lcom/avira/android/cropimage/a;->e:I

    .line 61
    iput-object p6, p0, Lcom/avira/android/cropimage/a;->b:Landroid/net/Uri;

    .line 62
    iput-object p7, p0, Lcom/avira/android/cropimage/a;->d:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lcom/avira/android/cropimage/a;->f:Ljava/lang/String;

    .line 64
    iput-wide p9, p0, Lcom/avira/android/cropimage/a;->h:J

    .line 65
    iput-object p11, p0, Lcom/avira/android/cropimage/a;->i:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/avira/android/cropimage/a;->b(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avira/android/cropimage/a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/avira/android/cropimage/a;->h:J

    return-wide v0
.end method

.method public b(II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avira/android/cropimage/a;->g:Lcom/avira/android/cropimage/b;

    iget-wide v2, p0, Lcom/avira/android/cropimage/a;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/cropimage/b;->a(J)Landroid/net/Uri;

    move-result-object v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/avira/android/cropimage/a;->a:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v0, v1}, Lcom/avira/android/cropimage/am;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/avira/android/cropimage/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avira/android/cropimage/am;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/avira/android/cropimage/r;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/avira/android/cropimage/a;->b:Landroid/net/Uri;

    check-cast p1, Lcom/avira/android/cropimage/r;

    iget-object v1, p1, Lcom/avira/android/cropimage/r;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avira/android/cropimage/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/avira/android/cropimage/a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
