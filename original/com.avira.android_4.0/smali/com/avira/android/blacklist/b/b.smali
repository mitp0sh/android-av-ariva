.class final Lcom/avira/android/blacklist/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/b/a;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/b/a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/avira/android/blacklist/b/b;->a:Lcom/avira/android/blacklist/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avira/android/blacklist/b/b;->a:Lcom/avira/android/blacklist/b/a;

    invoke-static {v0}, Lcom/avira/android/blacklist/b/a;->a(Lcom/avira/android/blacklist/b/a;)V

    .line 120
    return-void
.end method
