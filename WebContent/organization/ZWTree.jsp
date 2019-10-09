<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>�ļ���</title>
    <style>
        ul, li {
            list-style: none;
        }

        ul {
            padding-left: 20px;
        }

        .close {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url("<%=path %>/images/close.png") no-repeat center;
            background-size: contain;
        }

        .open {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url("<%=path %>/images/open.png") no-repeat center;
            background-size: contain;
        }

        .leaf {
            display: inline-block;
            width: 15px;
            height: 15px;
            background: url("<%=path %>/images/leaf.png") no-repeat center;
            background-size: contain;
        }

        .leafName {

            color: green;
            padding-left: 10px;
            padding-right: 10px;

        }

        .openTrue {

            color: gray;

        }
    </style>
</head>
<body>
<div id="tree"></div>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script>
var arr = [
    {
        name: "����", open: true,
        children: [
            {
                name: "������",
                children: [
                    {name: "�ֲ�1", nid: "nid"},
                    {name: "�ֲ�2",},
                    {name: "�ֲ�3"},
                    {name: "�ֲ�4"}
                ]
            
            },
            {
                name: "��ȫ��",
                children: [
                    {name: "�ֲ�1"},
                    {name: "�ֲ�2"},
                    {name: "�ֲ�3"},
                    {name: "�ֲ�4"}
                ]
            },
            {name: "���ڲ�", isParent: true}
        ]
    }
];

/*     var arr1 = [
        {id: 1, pId: 0, name: "���ڵ�1 - չ��", open: true},
        {id: 11, pId: 1, name: "���ڵ�11"},
        {id: 111, pId: 11, name: "Ҷ�ӽڵ�111"},
        {id: 112, pId: 11, name: "Ҷ�ӽڵ�112"},
        {id: 113, pId: 11, name: "Ҷ�ӽڵ�113"},
        {id: 114, pId: 11, name: "Ҷ�ӽڵ�114"},
        {id: 12, pId: 1, name: "���ڵ�12 "},
        {id: 121, pId: 12, name: "Ҷ�ӽڵ�121"},
        {id: 122, pId: 12, name: "Ҷ�ӽڵ�122"},
        {id: 123, pId: 12, name: "Ҷ�ӽڵ�123"},
        {id: 124, pId: 12, name: "Ҷ�ӽڵ�124"},
        {id: 13, pId: 1, name: "���ڵ�13 - û���ӽڵ�", isParent: true}
    ]; */

    paintingTree(arr, "tree")

    function paintingTree(arr, id) {
        if(arr[0]["pId"]!==undefined){
            arr=removeEmptyFromPaintData(arr)
        }
        var str = ""
        //��Ⱦ��
        function createTree(arr) {
            if (arr) {
                var children = arr;
                str += "<ul>";
                for (var j = 0; j < children.length; j++) {
                    str += "<li>"
                    if (children[j]["children"]) {
                        if (children[j]["open"]) {
                            str += "<div open='true'><span class='close'></span><span class='openTrue'>" + children[j]["name"] + "</span></div>";
                        } else {
                            str += "<div open='false'><span class='open'></span><span class='openTrue'>" + children[j]["name"] + "</span></div>";
                        }

                    } else {
                        str += "<div><span class='leaf'></span><span class='leafName'>" + children[j]["name"] + "</div>";
                    }

                    createTree(children[j]["children"])
                    str += "</li>"
                }
                str += "</ul>";
            }
        }

        createTree(arr)
        $("#"+id).hide()
        $("#"+id).html(str)
        $("[open=true]").each(function () {
            $(this).next().show()
        })
        $("[open=false]").each(function () {
            $(this).next().hide()
        })
        $(document).on("click", ".close", function () {
            $(this).parent().next().hide()
            $(this).addClass("open").removeClass("close")
        })
        $(document).on("click", ".open", function () {
            $(this).parent().next().show()
            $(this).addClass("close").removeClass("open")
        })
        $("#"+id).show()
        //�Ѽ򵥵�����ת������Ⱦ����
        function createPaintDataFromSimpleData(zNodes, Nodes) {
            for (var i = 0; i < zNodes.length; i++) {
                if (!!zNodes[i]) {
                    zNodes[i]["children"] = [];
                    for (var j = 0; j < Nodes.length; j++) {

                        if (!!Nodes[j]) {
                            if (Nodes[j]["pId"] == zNodes[i]["id"]) {
                                if (Nodes[j]) {
                                    zNodes[i]["children"].push(Nodes[j])
                                    Nodes[j] = ""
                                }
                            }
                        }
                    }
                    if (zNodes[i]["children"].length == 0) {
                        zNodes[i]["children"] = false
                    } else {
                        createPaintDataFromSimpleData(zNodes[i]["children"], zNodes)
                    }
                }
            }
            return zNodes
        }
        //����Ⱦ���������Ԫ��
        function removeEmptyFromPaintData(nodes) {
            var data = createPaintDataFromSimpleData(nodes, nodes);
            var arr = [];
            for (var i = 0; i < data.length; i++) {
                if (!!data[i]) {
                    arr.push(data[i])
                }
            }
            return arr;
        }
    }
</script>
</body>
</html>