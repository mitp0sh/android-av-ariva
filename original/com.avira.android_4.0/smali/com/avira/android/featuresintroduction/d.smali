.class final Lcom/avira/android/featuresintroduction/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/featuresintroduction/c;


# direct methods
.method private constructor <init>(Lcom/avira/android/featuresintroduction/c;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/avira/android/featuresintroduction/d;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/featuresintroduction/c;B)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/avira/android/featuresintroduction/d;-><init>(Lcom/avira/android/featuresintroduction/c;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 214
    if-eqz p2, :cond_0

    const-string v0, "extra_image_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "extra_image_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/d;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-static {v1}, Lcom/avira/android/featuresintroduction/c;->a(Lcom/avira/android/featuresintroduction/c;)Lcom/avira/android/featuresintroduction/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/featuresintroduction/e;->a([B)V

    .line 219
    :cond_0
    return-void
.end method
