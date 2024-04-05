# Create rich menu
curl -v -X POST https://api.line.me/v2/bot/richmenu \
-H "Authorization: Bearer {channel access token}" \
-H 'Content-Type: application/json' \
-d \
'{
    "size": {
        "width": 2500,
        "height": 1686
    },
    "selected": true,
    "name": "[預設] 註冊前",
    "chatBarText": "選單",
    "areas": [
        {
            "bounds": {
                "x": 0,
                "y": 0,
                "width": 2500,
                "height": 843
            },
            "action": {
                "type": "uri",
                "label": "Tap area A",
                "uri": "https://liff.line.me/2004505537-Gq659eMR/signup"
            }
        },
        {
            "bounds": {
                "x": 0,
                "y": 843,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "message",
                "label": "Tap area B",
                "text": "常見問答"
            }
        },
        {
            "bounds": {
                "x": 833,
                "y": 843,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "message",
                "label": "Tap area C",
                "text": "線上客服"
            }
        },
        {
            "bounds": {
                "x": 1666,
                "y": 843,
                "width": 834,
                "height": 843
            },
            "action": {
                "type": "message",
                "label": "Tap area D",
                "text": "聯絡我們"
            }
        }
    ]
}'

# Upload rich menu image
curl -v -X POST https://api-data.line.me/v2/bot/richmenu/{richMenuId}/content \
-H "Authorization: Bearer {channel access token}" \
-H "Content-Type: image/png" \
-T richmenu-default.png

# Create rich menu
curl -v -X POST https://api.line.me/v2/bot/richmenu \
-H "Authorization: Bearer {channel access token}" \
-H 'Content-Type: application/json' \
-d \
'{
    "size": {
        "width": 2500,
        "height": 1686
    },
    "selected": true,
    "name": "[特定] 完成註冊",
    "chatBarText": "選單",
    "areas": [
        {
            "bounds": {
                "x": 0,
                "y": 0,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "uri",
                "label": "Tap area A",
                "uri": "https://liff.line.me/2004505537-Gq659eMR/order"
            }
        },
        {
            "bounds": {
                "x": 833,
                "y": 0,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "uri",
                "label": "Tap area B",
                "uri": "https://liff.line.me/2004505537-Gq659eMR/track"
            }
        },
        {
            "bounds": {
                "x": 1666,
                "y": 0,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "uri",
                "label": "Tap area C",
                "uri": "https://liff.line.me/2004505537-Gq659eMR/history"
            }
        },
        {
            "bounds": {
                "x": 0,
                "y": 843,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "message",
                "label": "Tap area D",
                "text": "常見問答"
            }
        },
        {
            "bounds": {
                "x": 833,
                "y": 843,
                "width": 833,
                "height": 843
            },
            "action": {
                "type": "message",
                "label": "Tap area E",
                "text": "線上客服"
            }
        },
        {
            "bounds": {
                "x": 1666,
                "y": 843,
                "width": 834,
                "height": 843
            },
            "action": {
                "type": "message",
                "label": "Tap area F",
                "text": "聯絡我們"
            }
        }
    ]
}'

# Upload rich menu image
curl -v -X POST https://api-data.line.me/v2/bot/richmenu/{richMenuId}/content \
-H "Authorization: Bearer {channel access token}" \
-H "Content-Type: image/png" \
-T richmenu-signup-user.png