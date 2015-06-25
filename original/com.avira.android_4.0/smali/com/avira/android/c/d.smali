.class final Lcom/avira/android/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/c/c;


# direct methods
.method constructor <init>(Lcom/avira/android/c/c;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/avira/android/c/d;->a:Lcom/avira/android/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/avira/android/c/d;->a:Lcom/avira/android/c/c;

    iget-object v0, v0, Lcom/avira/android/c/c;->a:Lcom/avira/android/c/a;

    iget-object v1, p0, Lcom/avira/android/c/d;->a:Lcom/avira/android/c/c;

    iget-object v1, v1, Lcom/avira/android/c/c;->a:Lcom/avira/android/c/a;

    invoke-static {v1}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/a;Landroid/location/Location;)V

    .line 283
    return-void
.end method
