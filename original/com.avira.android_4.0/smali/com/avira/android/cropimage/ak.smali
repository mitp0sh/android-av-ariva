.class public final Lcom/avira/android/cropimage/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/q;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImageList"


# instance fields
.field private a:Lcom/avira/android/cropimage/p;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/avira/android/cropimage/ak;->b:Landroid/net/Uri;

    .line 38
    new-instance v0, Lcom/avira/android/cropimage/al;

    invoke-direct {v0, p0, p1, p2}, Lcom/avira/android/cropimage/al;-><init>(Lcom/avira/android/cropimage/q;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/avira/android/cropimage/ak;->a:Lcom/avira/android/cropimage/p;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/avira/android/cropimage/p;
    .locals 1

    .prologue
    .line 68
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/avira/android/cropimage/ak;->a:Lcom/avira/android/cropimage/p;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;)Lcom/avira/android/cropimage/p;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avira/android/cropimage/ak;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/cropimage/ak;->a:Lcom/avira/android/cropimage/p;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/avira/android/cropimage/ak;->a:Lcom/avira/android/cropimage/p;

    .line 93
    iput-object v0, p0, Lcom/avira/android/cropimage/ak;->b:Landroid/net/Uri;

    .line 94
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
