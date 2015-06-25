.class public final Lcom/avira/android/userprofile/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_IMAGE_DOWNLOADED:Ljava/lang/String; = "com.avira.android.IMAGE_DOWNLOADED"

.field public static final EXTRA_IMAGE_DATA:Ljava/lang/String; = "extra_image_data"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/userprofile/h;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/userprofile/h;->b:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/userprofile/h;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/userprofile/h;->b:Z

    .line 26
    iput-object p1, p0, Lcom/avira/android/userprofile/h;->a:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avira/android/userprofile/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    iget-object v0, p0, Lcom/avira/android/userprofile/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/common/web/o;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 52
    new-instance v1, Lcom/avira/android/userprofile/x;

    invoke-direct {v1}, Lcom/avira/android/userprofile/x;-><init>()V

    .line 53
    new-instance v2, Lcom/avira/android/userprofile/s;

    invoke-direct {v2}, Lcom/avira/android/userprofile/s;-><init>()V

    .line 55
    invoke-virtual {v2}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2, v0}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, p0, Lcom/avira/android/userprofile/h;->b:Z

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.IMAGE_DOWNLOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v2, "extra_image_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
