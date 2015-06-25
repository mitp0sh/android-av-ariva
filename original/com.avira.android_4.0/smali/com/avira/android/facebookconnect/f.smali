.class final Lcom/avira/android/facebookconnect/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bl;


# instance fields
.field final synthetic a:Lcom/facebook/by;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/avira/android/facebookconnect/d;


# direct methods
.method constructor <init>(Lcom/avira/android/facebookconnect/d;Lcom/facebook/by;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/avira/android/facebookconnect/f;->c:Lcom/avira/android/facebookconnect/d;

    iput-object p2, p0, Lcom/avira/android/facebookconnect/f;->a:Lcom/facebook/by;

    iput-object p3, p0, Lcom/avira/android/facebookconnect/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/c/j;Lcom/facebook/bx;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avira/android/facebookconnect/f;->a:Lcom/facebook/by;

    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 151
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/avira/android/facebookconnect/f;->c:Lcom/avira/android/facebookconnect/d;

    invoke-static {v0}, Lcom/avira/android/facebookconnect/d;->a(Lcom/avira/android/facebookconnect/d;)Lcom/avira/android/facebookconnect/g;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/facebookconnect/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/avira/android/facebookconnect/g;->a(Ljava/lang/String;Lcom/facebook/c/j;)V

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/avira/android/facebookconnect/f;->c:Lcom/avira/android/facebookconnect/d;

    invoke-static {v0}, Lcom/avira/android/facebookconnect/d;->a(Lcom/avira/android/facebookconnect/d;)Lcom/avira/android/facebookconnect/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->a()V

    goto :goto_0

    .line 163
    :cond_1
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/avira/android/facebookconnect/f;->c:Lcom/avira/android/facebookconnect/d;

    invoke-static {v0}, Lcom/avira/android/facebookconnect/d;->a(Lcom/avira/android/facebookconnect/d;)Lcom/avira/android/facebookconnect/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    goto :goto_0
.end method
