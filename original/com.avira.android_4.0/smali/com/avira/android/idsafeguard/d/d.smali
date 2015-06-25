.class final Lcom/avira/android/idsafeguard/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/avira/android/idsafeguard/d/b;


# direct methods
.method constructor <init>(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/avira/android/idsafeguard/d/d;->c:Lcom/avira/android/idsafeguard/d/b;

    iput-object p2, p0, Lcom/avira/android/idsafeguard/d/d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/avira/android/idsafeguard/d/d;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/d;->c:Lcom/avira/android/idsafeguard/d/b;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/d/d;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/d;->b:Landroid/view/View;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
