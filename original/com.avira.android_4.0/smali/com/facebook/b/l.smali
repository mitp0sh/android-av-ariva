.class public Lcom/facebook/b/l;
.super Lcom/facebook/widget/af;
.source "SourceFile"


# static fields
.field private static final OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/b/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/l;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/af;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/facebook/b/l;->b(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    :goto_0
    return v0

    .line 58
    :cond_0
    const-string v2, "fb%s://bridge/"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v2, Lcom/facebook/b/l;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/b/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/facebook/b/m;

    invoke-direct {v0, p0, p3, p4}, Lcom/facebook/b/m;-><init>(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/c;)V

    invoke-virtual {v2, v0}, Lcom/facebook/b/l;->a(Lcom/facebook/widget/am;)V

    .line 77
    invoke-virtual {v2}, Lcom/facebook/b/l;->show()V

    move v0, v1

    .line 78
    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/b/l;)Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/facebook/b/l;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/b/l;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/facebook/b/l;->c()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 93
    const-string v0, "bridge_args"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v2, "bridge_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v2}, Lcom/facebook/b/b;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v2, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    const-string v0, "method_results"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v2, "method_results"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "{}"

    .line 115
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Lcom/facebook/b/b;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    const-string v2, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_2
    :goto_1
    const-string v0, "version"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 126
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {}, Lcom/facebook/b/bw;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/b/l;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/b/cl;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    sget-object v0, Lcom/facebook/b/l;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/b/cl;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/b/l;->b()Landroid/webkit/WebView;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/b/l;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/facebook/widget/af;->dismiss()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/b/l;->a:Z

    if-nez v1, :cond_1

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/b/l;->a:Z

    .line 150
    const-string v1, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    new-instance v1, Lcom/facebook/b/n;

    invoke-direct {v1, p0}, Lcom/facebook/b/n;-><init>(Lcom/facebook/b/l;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
